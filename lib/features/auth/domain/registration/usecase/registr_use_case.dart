import 'package:restaurants_test/features/auth/domain/registration/repository/registr_repo.dart';

class RegistrCase {
  RegistrCase({required this.repository});
  final RegistrRepo repository;
  getToken({
    required String email,
    required String name,
    required String phone,
    required String password,
  }) async {
    final emailFrom = email.replaceAll(' ', '');
    try {
      final responce = await repository.registration(
          email: emailFrom, name: name, phone: phone, password: password);
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
