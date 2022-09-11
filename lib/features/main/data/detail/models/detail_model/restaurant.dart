import 'package:freezed_annotation/freezed_annotation.dart';

import 'coords.dart';
import 'schedule.dart';
import 'user.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

@freezed
class Restaurant with _$Restaurant {
  factory Restaurant({
    @JsonKey(name: 'is_favourite') bool? isFavourite,
    int? id,
    String? title,
    String? description,
    @JsonKey(name: 'schedule_id') int? scheduleId,
    @JsonKey(name: 'coords_id') int? coordsId,
    @JsonKey(name: 'user_id') int? userId,
    Schedule? schedule,
    Coords? coords,
    List<dynamic>? images,
    User? user,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
}
