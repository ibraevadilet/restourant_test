import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/features/main/domain/detail/entity/detail_entity.dart';

import 'coords.dart';
import 'like.dart';
import 'schedule.dart';
import 'user.dart';

part 'detail_model.freezed.dart';
part 'detail_model.g.dart';

@freezed
class DetailModel with _$DetailModel {
  factory DetailModel({
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
    List<Like>? likes,
  }) = _DetailModel;

  factory DetailModel.fromJson(Map<String, dynamic> json) =>
      _$DetailModelFromJson(json);

  DetailModel._();
  DetailEntity toEntity() => DetailEntity(
        id: id!,
        title: title!,
        description: description!,
        adress: coords!.addressName!,
        isFavorite: isFavourite!,
        opening: schedule!.opening!,
        closing: schedule!.closing!,
      );
}
