import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../di/injection.dart';
import '../../error/exceptions/exceptions.dart';
import '../../helpers/typedefs.dart';

@lazySingleton
class DioClient {
  final Dio _dio = getIt<Dio>();

  Future<dynamic> get(
    String url, {
    JSON? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      return response.data;
    } on Exception catch (e) {
      throw NetworkException.fromDioException(e);
    }
  }

  Future<dynamic> post(
    String url, {
    data,
    JSON? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on Exception catch (e) {
      throw NetworkException.fromDioException(e);
    }
  }

  Future<dynamic> put(
    String url, {
    data,
    JSON? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on Exception catch (e) {
      throw NetworkException.fromDioException(e);
    }
  }

  Future<dynamic> delete(
    String url, {
    data,
    JSON? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } on Exception catch (e) {
      throw NetworkException.fromDioException(e);
    }
  }
}
