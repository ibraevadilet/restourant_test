// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_restourants_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllRestourantsModel _$AllRestourantsModelFromJson(Map<String, dynamic> json) {
  return _AllRestourantsModel.fromJson(json);
}

/// @nodoc
mixin _$AllRestourantsModel {
  int? get count => throw _privateConstructorUsedError;
  List<Restaurant>? get restaurants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllRestourantsModelCopyWith<AllRestourantsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllRestourantsModelCopyWith<$Res> {
  factory $AllRestourantsModelCopyWith(
          AllRestourantsModel value, $Res Function(AllRestourantsModel) then) =
      _$AllRestourantsModelCopyWithImpl<$Res>;
  $Res call({int? count, List<Restaurant>? restaurants});
}

/// @nodoc
class _$AllRestourantsModelCopyWithImpl<$Res>
    implements $AllRestourantsModelCopyWith<$Res> {
  _$AllRestourantsModelCopyWithImpl(this._value, this._then);

  final AllRestourantsModel _value;
  // ignore: unused_field
  final $Res Function(AllRestourantsModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? restaurants = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurants: restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>?,
    ));
  }
}

/// @nodoc
abstract class _$$_AllRestourantsModelCopyWith<$Res>
    implements $AllRestourantsModelCopyWith<$Res> {
  factory _$$_AllRestourantsModelCopyWith(_$_AllRestourantsModel value,
          $Res Function(_$_AllRestourantsModel) then) =
      __$$_AllRestourantsModelCopyWithImpl<$Res>;
  @override
  $Res call({int? count, List<Restaurant>? restaurants});
}

/// @nodoc
class __$$_AllRestourantsModelCopyWithImpl<$Res>
    extends _$AllRestourantsModelCopyWithImpl<$Res>
    implements _$$_AllRestourantsModelCopyWith<$Res> {
  __$$_AllRestourantsModelCopyWithImpl(_$_AllRestourantsModel _value,
      $Res Function(_$_AllRestourantsModel) _then)
      : super(_value, (v) => _then(v as _$_AllRestourantsModel));

  @override
  _$_AllRestourantsModel get _value => super._value as _$_AllRestourantsModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? restaurants = freezed,
  }) {
    return _then(_$_AllRestourantsModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurants: restaurants == freezed
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllRestourantsModel implements _AllRestourantsModel {
  _$_AllRestourantsModel({this.count, final List<Restaurant>? restaurants})
      : _restaurants = restaurants;

  factory _$_AllRestourantsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AllRestourantsModelFromJson(json);

  @override
  final int? count;
  final List<Restaurant>? _restaurants;
  @override
  List<Restaurant>? get restaurants {
    final value = _restaurants;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllRestourantsModel(count: $count, restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllRestourantsModel &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  _$$_AllRestourantsModelCopyWith<_$_AllRestourantsModel> get copyWith =>
      __$$_AllRestourantsModelCopyWithImpl<_$_AllRestourantsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllRestourantsModelToJson(
      this,
    );
  }
}

abstract class _AllRestourantsModel implements AllRestourantsModel {
  factory _AllRestourantsModel(
      {final int? count,
      final List<Restaurant>? restaurants}) = _$_AllRestourantsModel;

  factory _AllRestourantsModel.fromJson(Map<String, dynamic> json) =
      _$_AllRestourantsModel.fromJson;

  @override
  int? get count;
  @override
  List<Restaurant>? get restaurants;
  @override
  @JsonKey(ignore: true)
  _$$_AllRestourantsModelCopyWith<_$_AllRestourantsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
