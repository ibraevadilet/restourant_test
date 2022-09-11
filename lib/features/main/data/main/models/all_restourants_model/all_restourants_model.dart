import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/features/main/domain/main/entity/all_restourant_entity.dart';

import 'restaurant.dart';

part 'all_restourants_model.freezed.dart';
part 'all_restourants_model.g.dart';

@freezed
class AllRestourantsModel with _$AllRestourantsModel {
  factory AllRestourantsModel({
    int? count,
    List<Restaurant>? restaurants,
  }) = _AllRestourantsModel;

  factory AllRestourantsModel.fromJson(Map<String, dynamic> json) =>
      _$AllRestourantsModelFromJson(json);
}
