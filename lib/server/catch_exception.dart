import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:restaurants_test/translations/locale_keys.g.dart';

class CatchException {
  CatchException({required this.message});
  String message;

  static CatchException convertException(dynamic error) {
    if (error is DioError && error.error is CatchException) {
      return error.error;
    }
    if (error is DioError) {
      if (error.type == DioErrorType.connectTimeout) {
        return CatchException(message: LocaleKeys.catchExTimeOfProcessing.tr());
      } else if (error.type == DioErrorType.receiveTimeout) {
        return CatchException(message: LocaleKeys.catchExTimeOfProcessing.tr());
      } else if (error.response == null) {
        return CatchException(message: LocaleKeys.catchExNoInternet.tr());
      } else if (error.response!.statusCode == 405) {
        return CatchException(message: LocaleKeys.catchExRequestDenied.tr());
      } else if (error.response!.statusCode == 422) {
        return CatchException(message: error.response!.data['message']);
      } else if (error.response!.statusCode == 500) {
        return CatchException(message: '500');
      } else {
        return CatchException(message: LocaleKeys.catchExSystemError.tr());
      }
    }
    if (error is CatchException) {
      return error;
    } else {
      return CatchException(message: LocaleKeys.catchExSystemError.tr());
    }
  }
}
