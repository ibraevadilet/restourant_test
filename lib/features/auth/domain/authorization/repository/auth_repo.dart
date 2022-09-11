import 'package:restaurants_test/features/auth/domain/registration/entity/registr_entity.dart';

abstract class AuthRepo {
  Future<AuthEntity> auth({
    required String email,
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
