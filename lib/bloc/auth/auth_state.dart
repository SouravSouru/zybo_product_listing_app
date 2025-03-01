part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    LoginModel? loginResponse,
    String? errorMessage,
    Register? registerResponse,
    required bool isOtpVerified,
    required bool isLoading,
    required LoadingButtons loadingButtons,
  }) = _AuthState;

  factory AuthState.initial() =>
      const AuthState(isLoading: false, isOtpVerified: false, loadingButtons: LoadingButtons.none);
}
