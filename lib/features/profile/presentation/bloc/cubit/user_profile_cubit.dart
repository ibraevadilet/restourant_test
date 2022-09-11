import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/core/constants/app_text_constants.dart';
import 'package:restaurants_test/server/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_profile_state.dart';
part 'user_profile_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit() : super(const UserProfileState.initial('', '')) {
    getUserNameAndEmail();
  }

  getUserNameAndEmail() {
    final prefs = sl<SharedPreferences>();
    emit(UserProfileState.initial(prefs.getString(SharedKeys.userName)!,
        prefs.getString(SharedKeys.userEmail)!));
  }
}
