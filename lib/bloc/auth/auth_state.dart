part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    LoginModel? loginResponse,
    String? errorMessage,
    required bool isOtpVerified,
    required bool isLoading,
  }) = _AuthState;

  factory AuthState.initial() =>
      const AuthState(isLoading: false, isOtpVerified: false);
}
