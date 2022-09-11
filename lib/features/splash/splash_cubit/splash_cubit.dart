import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/core/constants/app_text_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({required this.prefs}) : super(const SplashState.initial()) {
    getAuthStatus();
  }
  final SharedPreferences prefs;

  Future<void> getAuthStatus() async {
    final token = prefs.getString(SharedKeys.token) ?? '';
    if (token != '') {
      await Future.delayed(const Duration(seconds: 1));
      emit(const SplashState.authenticated());
    } else {
      await Future.delayed(const Duration(seconds: 1));
      emit(const SplashState.unauthenticated());
    }
  }
}
