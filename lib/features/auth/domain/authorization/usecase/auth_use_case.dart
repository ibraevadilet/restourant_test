import 'package:restaurants_test/features/auth/domain/authorization/repository/auth_repo.dart';

class AuthCase {
  AuthCase({required this.repository});
  final AuthRepo repository;
  getToken({
    required String email,
    required String password,
  }) async {
    final emailFrom = email.replaceAll(' ', '');
    try {
      final responce =
          await repository.auth(email: emailFrom, password: password);
      repository.saveTokens(
        id: responce.id,
        email: responce.email,
        nickname: responce.nickname,
        accessToken: responce.accessToken,
        refreshToken: responce.refreshToken,
      );
      return responce;
    } catch (e) {
      rethrow;
    }
  }
}
