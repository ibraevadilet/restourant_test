// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tokens: Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };
