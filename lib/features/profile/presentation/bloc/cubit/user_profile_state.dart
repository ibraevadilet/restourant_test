part of 'user_profile_cubit.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial(String name, String email) = _Initial;
}
