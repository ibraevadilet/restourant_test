import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_test/core/constants/app_text_constants.dart';
import 'package:restaurants_test/server/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioSettings {
  DioSettings() {
    initialSettings();
  }

  @injectable
  Dio dio = Dio(BaseOptions(
    baseUrl: AppTextConstants.mainServer,
    contentType: "application/json; charset=utf-8",
    connectTimeout: 20000,
    receiveTimeout: 20000,
  ));
  void initialSettings() {
    final interceptors = dio.interceptors;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = sl<SharedPreferences>().getString(SharedKeys.token) ?? '';
        if (token != '') {
          options.headers['Authorization'] = 'Bearer $token';
        }

        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        return handler.next(e);
      },
    ));
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
  }
}
