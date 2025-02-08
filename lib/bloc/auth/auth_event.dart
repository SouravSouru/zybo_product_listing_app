part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.verifyPhonenumber() = VerifyPhonenumber;
  const factory AuthEvent.verifyOtp() = VerifyOtp;
  const factory AuthEvent.registerAccount() = RegisterAccount;
}
