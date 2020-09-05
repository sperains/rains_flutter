import 'package:dio/dio.dart';

import 'api.dart';

class DioUtil {
  static Dio dio;

  static String _token;

  set token(String value) {
    _token = value;
  }

  static Dio getInstance() {
    if(dio == null) {
      var options = BaseOptions(
        responseType: ResponseType.json,
        validateStatus: (status) {
          return true;
        },
        baseUrl: baseUrl,
        headers: {
          'Accept': 'application/json,*/*',
          'Content-Type': 'application/json',
        }
      );
      dio = new Dio(options);
    }
    return dio;
  }

  static clear() {
    dio = null;
  }


}