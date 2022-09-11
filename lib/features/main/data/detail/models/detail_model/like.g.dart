// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Like _$$_LikeFromJson(Map<String, dynamic> json) => _$_Like(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      restaurantId: json['restaurant_id'] as int?,
      restaurant: json['restaurant'] == null
          ? null
          : Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LikeToJson(_$_Like instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'restaurant_id': instance.restaurantId,
      'restaurant': instance.restaurant,
      'user': instance.user,
    };
