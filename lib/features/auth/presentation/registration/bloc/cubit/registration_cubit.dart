import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/features/auth/domain/registration/usecase/registr_use_case.dart';
import 'package:restaurants_test/server/catch_exception.dart';

part 'registration_state.dart';
part 'registration_cubit.freezed.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit({required this.usecase})
      : super(const RegistrationState.initial());
  final RegistrCase usecase;

  getToken({
    required String email,
    required String name,
    required String phone,
    required String password,
  }) async {
    emit(const RegistrationState.loading());
    try {
      await usecase.getToken(
          email: email, name: name, phone: phone, password: password);
      emit(const RegistrationState.success());
    } catch (error) {
      emit(RegistrationState.error(CatchException.convertException(error)));
    }
  }
}

extension IsLoading on RegistrationState {
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
