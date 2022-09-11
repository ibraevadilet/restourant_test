import 'package:dio/dio.dart';
import 'package:restaurants_test/core/constants/app_text_constants.dart';
import 'package:restaurants_test/features/auth/data/registration/models/registr_model/registr_model.dart';
import 'package:restaurants_test/features/auth/domain/registration/entity/registr_entity.dart';
import 'package:restaurants_test/features/auth/domain/registration/repository/registr_repo.dart';
import 'package:restaurants_test/server/catch_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrRepoImpl implements RegistrRepo {
  RegistrRepoImpl({required this.dio, required this.prefs});
  final Dio dio;
  final SharedPreferences prefs;
  @override
  Future<AuthEntity> registration(
      {required String email,
      required String name,
      required String phone,
      required String password}) async {
    final params = <String, String>{
      "email": email,
      "nickname": name,
      "phone": phone,
      "password": password
    };
    try {
      final response =
          await dio.post('auth/registration/customer/new', data: params);

      return AuthModel.fromJson(response.data).toEntity();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }

  @override
  saveTokens({
    required int id,
    required String email,
    required String nickname,
    required String accessToken,
    required String refreshToken,
  }) {
    prefs.setInt(SharedKeys.userId, id);
    prefs.setString(SharedKeys.userEmail, email);
    prefs.setString(SharedKeys.userName, nickname);
    prefs.setString(SharedKeys.token, accessToken);
    prefs.setString(SharedKeys.refreshToken, refreshToken);
  }
}
