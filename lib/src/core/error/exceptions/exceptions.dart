import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../constants/enums/network_exception_type.dart';

class NetworkException implements Exception {
  final String name, message;
  final String? code;
  final int? statusCode;
  final NetworkExceptionType exceptionType;

  NetworkException({
    this.code,
    int? statusCode,
    required this.message,
    this.exceptionType = NetworkExceptionType.apiException,
  })  : statusCode = statusCode ?? 500,
        name = exceptionType.name;

  factory NetworkException.fromDioException(Exception error) {
    try {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.cancel:
            return NetworkException(
              exceptionType: NetworkExceptionType.cancelException,
              statusCode: error.response?.statusCode,
              message: 'Request cancelled prematurely',
            );
          case DioErrorType.connectTimeout:
            return NetworkException(
              exceptionType: NetworkExceptionType.connectTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Connection not established',
            );
          case DioErrorType.sendTimeout:
            return NetworkException(
              exceptionType: NetworkExceptionType.sendTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to send',
            );
          case DioErrorType.receiveTimeout:
            return NetworkException(
              exceptionType: NetworkExceptionType.receiveTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to receive',
            );
          case DioErrorType.response:
          case DioErrorType.other:
            if (error.message.contains(NetworkExceptionType.socketException.name)) {
              return NetworkException(
                exceptionType: NetworkExceptionType.fetchDataException,
                statusCode: error.response?.statusCode,
                message: 'No internet connectivity',
              );
            }
            if (error.response?.data == null) {
              final name = error.response?.data['headers']['code'] as String;

              if (name == NetworkExceptionType.tokenExpiredException.name) {
                return NetworkException(
                  exceptionType: NetworkExceptionType.tokenExpiredException,
                  statusCode: error.response?.statusCode,
                  message: error.message,
                );
              }
              return NetworkException(
                exceptionType: NetworkExceptionType.unrecognizedException,
                statusCode: error.response?.statusCode,
                message: error.response?.statusMessage ?? 'Unknown',
              );
            }
            return NetworkException(
              message: error.response?.statusMessage ?? error.message,
              statusCode: error.response?.statusCode,
            );
        }
      } else {
        return NetworkException(
          exceptionType: NetworkExceptionType.unrecognizedException,
          message: 'Error unrecognized',
        );
      }
    } on FormatException catch (e) {
      return NetworkException(
        exceptionType: NetworkExceptionType.formatException,
        message: e.message,
      );
    } on Exception catch (_) {
      return NetworkException(
        exceptionType: NetworkExceptionType.unrecognizedException,
        message: 'Error unrecognized',
      );
    }
  }

  factory NetworkException.fromParsingException(Exception error) {
    debugPrint('$error');
    return NetworkException(
      exceptionType: NetworkExceptionType.serializationException,
      message: 'Failed to parse network response to model or vice versa',
    );
  }
}
