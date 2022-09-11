// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailModel _$DetailModelFromJson(Map<String, dynamic> json) {
  return _DetailModel.fromJson(json);
}

/// @nodoc
mixin _$DetailModel {
  @JsonKey(name: 'is_favourite')
  bool? get isFavourite => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_id')
  int? get scheduleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coords_id')
  int? get coordsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  Schedule? get schedule => throw _privateConstructorUsedError;
  Coords? get coords => throw _privateConstructorUsedError;
  List<dynamic>? get images => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<Like>? get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailModelCopyWith<DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailModelCopyWith<$Res> {
  factory $DetailModelCopyWith(
          DetailModel value, $Res Function(DetailModel) then) =
      _$DetailModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'is_favourite') bool? isFavourite,
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
      List<Like>? likes});

  $ScheduleCopyWith<$Res>? get schedule;
  $CoordsCopyWith<$Res>? get coords;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$DetailModelCopyWithImpl<$Res> implements $DetailModelCopyWith<$Res> {
  _$DetailModelCopyWithImpl(this._value, this._then);

  final DetailModel _value;
  // ignore: unused_field
  final $Res Function(DetailModel) _then;

  @override
  $Res call({
    Object? isFavourite = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? scheduleId = freezed,
    Object? coordsId = freezed,
    Object? userId = freezed,
    Object? schedule = freezed,
    Object? coords = freezed,
    Object? images = freezed,
    Object? user = freezed,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      coordsId: coordsId == freezed
          ? _value.coordsId
          : coordsId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
      coords: coords == freezed
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Like>?,
    ));
  }

  @override
  $ScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }

  @override
  $CoordsCopyWith<$Res>? get coords {
    if (_value.coords == null) {
      return null;
    }

    return $CoordsCopyWith<$Res>(_value.coords!, (value) {
      return _then(_value.copyWith(coords: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_DetailModelCopyWith<$Res>
    implements $DetailModelCopyWith<$Res> {
  factory _$$_DetailModelCopyWith(
          _$_DetailModel value, $Res Function(_$_DetailModel) then) =
      __$$_DetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'is_favourite') bool? isFavourite,
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
      List<Like>? likes});

  @override
  $ScheduleCopyWith<$Res>? get schedule;
  @override
  $CoordsCopyWith<$Res>? get coords;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_DetailModelCopyWithImpl<$Res> extends _$DetailModelCopyWithImpl<$Res>
    implements _$$_DetailModelCopyWith<$Res> {
  __$$_DetailModelCopyWithImpl(
      _$_DetailModel _value, $Res Function(_$_DetailModel) _then)
      : super(_value, (v) => _then(v as _$_DetailModel));

  @override
  _$_DetailModel get _value => super._value as _$_DetailModel;

  @override
  $Res call({
    Object? isFavourite = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? scheduleId = freezed,
    Object? coordsId = freezed,
    Object? userId = freezed,
    Object? schedule = freezed,
    Object? coords = freezed,
    Object? images = freezed,
    Object? user = freezed,
    Object? likes = freezed,
  }) {
    return _then(_$_DetailModel(
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      coordsId: coordsId == freezed
          ? _value.coordsId
          : coordsId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
      coords: coords == freezed
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      likes: likes == freezed
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Like>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailModel extends _DetailModel {
  _$_DetailModel(
      {@JsonKey(name: 'is_favourite') this.isFavourite,
      this.id,
      this.title,
      this.description,
      @JsonKey(name: 'schedule_id') this.scheduleId,
      @JsonKey(name: 'coords_id') this.coordsId,
      @JsonKey(name: 'user_id') this.userId,
      this.schedule,
      this.coords,
      final List<dynamic>? images,
      this.user,
      final List<Like>? likes})
      : _images = images,
        _likes = likes,
        super._();

  factory _$_DetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailModelFromJson(json);

  @override
  @JsonKey(name: 'is_favourite')
  final bool? isFavourite;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'schedule_id')
  final int? scheduleId;
  @override
  @JsonKey(name: 'coords_id')
  final int? coordsId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final Schedule? schedule;
  @override
  final Coords? coords;
  final List<dynamic>? _images;
  @override
  List<dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? user;
  final List<Like>? _likes;
  @override
  List<Like>? get likes {
    final value = _likes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailModel(isFavourite: $isFavourite, id: $id, title: $title, description: $description, scheduleId: $scheduleId, coordsId: $coordsId, userId: $userId, schedule: $schedule, coords: $coords, images: $images, user: $user, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailModel &&
            const DeepCollectionEquality()
                .equals(other.isFavourite, isFavourite) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.scheduleId, scheduleId) &&
            const DeepCollectionEquality().equals(other.coordsId, coordsId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.schedule, schedule) &&
            const DeepCollectionEquality().equals(other.coords, coords) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFavourite),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(scheduleId),
      const DeepCollectionEquality().hash(coordsId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(schedule),
      const DeepCollectionEquality().hash(coords),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  _$$_DetailModelCopyWith<_$_DetailModel> get copyWith =>
      __$$_DetailModelCopyWithImpl<_$_DetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailModelToJson(
      this,
    );
  }
}

abstract class _DetailModel extends DetailModel {
  factory _DetailModel(
      {@JsonKey(name: 'is_favourite') final bool? isFavourite,
      final int? id,
      final String? title,
      final String? description,
      @JsonKey(name: 'schedule_id') final int? scheduleId,
      @JsonKey(name: 'coords_id') final int? coordsId,
      @JsonKey(name: 'user_id') final int? userId,
      final Schedule? schedule,
      final Coords? coords,
      final List<dynamic>? images,
      final User? user,
      final List<Like>? likes}) = _$_DetailModel;
  _DetailModel._() : super._();

  factory _DetailModel.fromJson(Map<String, dynamic> json) =
      _$_DetailModel.fromJson;

  @override
  @JsonKey(name: 'is_favourite')
  bool? get isFavourite;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'schedule_id')
  int? get scheduleId;
  @override
  @JsonKey(name: 'coords_id')
  int? get coordsId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  Schedule? get schedule;
  @override
  Coords? get coords;
  @override
  List<dynamic>? get images;
  @override
  User? get user;
  @override
  List<Like>? get likes;
  @override
  @JsonKey(ignore: true)
  _$$_DetailModelCopyWith<_$_DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
