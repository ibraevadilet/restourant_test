import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/features/auth/domain/registration/entity/registr_entity.dart';

import 'tokens.dart';
import 'user.dart';

part 'registr_model.freezed.dart';
part 'registr_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    required User user,
    required Tokens tokens,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
  AuthModel._();

  AuthEntity toEntity() => AuthEntity(
        id: user.id,
        email: user.email,
        nickname: user.nickname,
        accessToken: tokens.accessToken,
        refreshToken: tokens.refreshToken,
      );
}
