import 'package:freezed_annotation/freezed_annotation.dart';

part 'coords.freezed.dart';
part 'coords.g.dart';

@freezed
class Coords with _$Coords {
  factory Coords({
    int? id,
    double? longitude,
    double? latitude,
    @JsonKey(name: 'address_name') String? addressName,
  }) = _Coords;

  factory Coords.fromJson(Map<String, dynamic> json) => _$CoordsFromJson(json);
}
