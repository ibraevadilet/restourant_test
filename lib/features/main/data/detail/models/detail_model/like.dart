import 'package:freezed_annotation/freezed_annotation.dart';

import 'restaurant.dart';
import 'user.dart';

part 'like.freezed.dart';
part 'like.g.dart';

@freezed
class Like with _$Like {
  factory Like({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'restaurant_id') int? restaurantId,
    Restaurant? restaurant,
    User? user,
  }) = _Like;

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
}
