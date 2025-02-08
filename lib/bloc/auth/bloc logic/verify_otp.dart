import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:zybo_machine_test/bloc/auth/auth_bloc.dart';

import '../../../core/services/hive_database_service.dart';
import '../../../core/utilities/controllers/controllers.dart';
import '../../../injection/service_locator.dart';

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

    if (state.isOtpVerified && (state.loginResponse?.user ?? false)) {
      // storing auth token to hive
      HiveDatabaseService.saveAuthToken(
          state.loginResponse?.token?.access ?? "");

      //  updating header for passing token
      final dio = locator<Dio>();
      dio.options.headers = {
        ...dio.options.headers,
        'Authorization': "Bearer ${HiveDatabaseService.getAuthToken()}",
      };
    }

    emit(state.copyWith(errorMessage: errorMessage));
    emit(state.copyWith(errorMessage: null, isLoading: false));
    return;
  }
}
