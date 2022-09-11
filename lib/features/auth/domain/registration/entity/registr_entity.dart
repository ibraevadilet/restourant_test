class AuthEntity {
  int id;
  String email;
  String nickname;
  String accessToken;
  String refreshToken;

  AuthEntity({
    required this.id,
    required this.email,
    required this.nickname,
    required this.accessToken,
    required this.refreshToken,
  });
}
