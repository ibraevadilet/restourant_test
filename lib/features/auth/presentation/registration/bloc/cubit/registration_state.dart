part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.success() = _Success;
  const factory RegistrationState.loading() = _Loading;
  const factory RegistrationState.error(CatchException error) = _Error;
}
