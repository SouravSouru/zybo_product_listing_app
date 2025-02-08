import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/auth/auth_bloc.dart';

import '../../../core/utilities/controllers/controllers.dart';

extension VerifyOtpLogic on AuthBloc {
  FutureOr<void> verifyOtp(event, Emitter<AuthState> emit) async {
    String? errorMessage;
    if (AuthenticationControllers.otp.text.isEmpty) {
      errorMessage = "Please enter the otp";
    } else if (AuthenticationControllers.otp.text.length != 4) {
      errorMessage = "Please enter the valid otp";
    } else if (AuthenticationControllers.otp.text != state.loginResponse?.otp) {
      errorMessage = "Invalid valid otp";
    } else {
      emit(state.copyWith(isOtpVerified: true));
    }

    emit(state.copyWith(errorMessage: errorMessage));
    emit(state.copyWith(errorMessage: null, isLoading: false));
    return;
  }
}
