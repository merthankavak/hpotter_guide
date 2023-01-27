import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/network/network_constants.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio()
    ..options.baseUrl = NetworkConstants.baseUrl
    ..options.connectTimeout = NetworkConstants.connectionTimeout
    ..options.receiveTimeout = NetworkConstants.receiveTimeout
    ..options.responseType = ResponseType.json
    ..interceptors.clear()
    ..interceptors.add(PrettyDioLogger(responseBody: false));
}

class $RegisterModule extends RegisterModule {}
