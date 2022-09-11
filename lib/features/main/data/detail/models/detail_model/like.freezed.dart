// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Like _$LikeFromJson(Map<String, dynamic> json) {
  return _Like.fromJson(json);
}

/// @nodoc
mixin _$Like {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_id')
  int? get restaurantId => throw _privateConstructorUsedError;
  Restaurant? get restaurant => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCopyWith<$Res> {
  factory $LikeCopyWith(Like value, $Res Function(Like) then) =
      _$LikeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'restaurant_id') int? restaurantId,
      Restaurant? restaurant,
      User? user});

  $RestaurantCopyWith<$Res>? get restaurant;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LikeCopyWithImpl<$Res> implements $LikeCopyWith<$Res> {
  _$LikeCopyWithImpl(this._value, this._then);

  final Like _value;
  // ignore: unused_field
  final $Res Function(Like) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? restaurantId = freezed,
    Object? restaurant = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $RestaurantCopyWith<$Res>? get restaurant {
    if (_value.restaurant == null) {
      return null;
    }

    return $RestaurantCopyWith<$Res>(_value.restaurant!, (value) {
      return _then(_value.copyWith(restaurant: value));
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
abstract class _$$_LikeCopyWith<$Res> implements $LikeCopyWith<$Res> {
  factory _$$_LikeCopyWith(_$_Like value, $Res Function(_$_Like) then) =
      __$$_LikeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'restaurant_id') int? restaurantId,
      Restaurant? restaurant,
      User? user});

  @override
  $RestaurantCopyWith<$Res>? get restaurant;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LikeCopyWithImpl<$Res> extends _$LikeCopyWithImpl<$Res>
    implements _$$_LikeCopyWith<$Res> {
  __$$_LikeCopyWithImpl(_$_Like _value, $Res Function(_$_Like) _then)
      : super(_value, (v) => _then(v as _$_Like));

  @override
  _$_Like get _value => super._value as _$_Like;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? restaurantId = freezed,
    Object? restaurant = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Like(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Like implements _Like {
  _$_Like(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'restaurant_id') this.restaurantId,
      this.restaurant,
      this.user});

  factory _$_Like.fromJson(Map<String, dynamic> json) => _$$_LikeFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'restaurant_id')
  final int? restaurantId;
  @override
  final Restaurant? restaurant;
  @override
  final User? user;

  @override
  String toString() {
    return 'Like(id: $id, userId: $userId, restaurantId: $restaurantId, restaurant: $restaurant, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Like &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId) &&
            const DeepCollectionEquality()
                .equals(other.restaurant, restaurant) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(restaurantId),
      const DeepCollectionEquality().hash(restaurant),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_LikeCopyWith<_$_Like> get copyWith =>
      __$$_LikeCopyWithImpl<_$_Like>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeToJson(
      this,
    );
  }
}

abstract class _Like implements Like {
  factory _Like(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'restaurant_id') final int? restaurantId,
      final Restaurant? restaurant,
      final User? user}) = _$_Like;

  factory _Like.fromJson(Map<String, dynamic> json) = _$_Like.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'restaurant_id')
  int? get restaurantId;
  @override
  Restaurant? get restaurant;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_LikeCopyWith<_$_Like> get copyWith => throw _privateConstructorUsedError;
}
