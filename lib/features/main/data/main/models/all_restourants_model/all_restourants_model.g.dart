// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_restourants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllRestourantsModel _$$_AllRestourantsModelFromJson(
        Map<String, dynamic> json) =>
    _$_AllRestourantsModel(
      count: json['count'] as int?,
      restaurants: (json['restaurants'] as List<dynamic>?)
          ?.map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllRestourantsModelToJson(
        _$_AllRestourantsModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'restaurants': instance.restaurants,
    };
