import 'package:restaurants_test/features/auth/domain/registration/entity/registr_entity.dart';

abstract class RegistrRepo {
  Future<AuthEntity> registration({
    required String email,
    required String name,
    required String phone,
    required String password,
  });
  saveTokens({
    required int id,
    required String email,
    required String nickname,
    required String accessToken,
    required String refreshToken,
  });
}
