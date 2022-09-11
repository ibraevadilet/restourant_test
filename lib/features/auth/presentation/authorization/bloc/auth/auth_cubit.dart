import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/features/auth/domain/authorization/usecase/auth_use_case.dart';
import 'package:restaurants_test/server/catch_exception.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.usecase}) : super(const AuthState.initial());
  final AuthCase usecase;
  getAuthToken({required String email, required String password}) async {
    emit(const AuthState.loading());
    try {
      await usecase.getToken(email: email, password: password);
      emit(const AuthState.success());
    } catch (e) {
      emit(AuthState.error(CatchException.convertException(e)));
    }
  }
}

extension IsLoading on AuthState {
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
