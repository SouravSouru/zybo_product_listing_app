import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/auth/auth_bloc.dart';
import '../../../core/resources/data_state.dart';
import '../../../core/utilities/controllers/controllers.dart';
import '../../../core/utilities/enums/enums.dart';
import '../../../domain/repository/authentication_repository.dart';
import '../../../injection/service_locator.dart';

extension VerifyPhonenumberLogic on AuthBloc {
  FutureOr<void> verifyPhonenumber(event, Emitter<AuthState> emit) async {
    String? errorMessage;
    if (AuthenticationControllers.phoneNumber.text.isEmpty) {
      errorMessage = "Please enter the phone number";
    } else if (AuthenticationControllers.phoneNumber.text.length != 10) {
      errorMessage = "Please enter the valid phone number";
    }
    if (errorMessage != null) {
      emit(state.copyWith(errorMessage: errorMessage));
      emit(state.copyWith(errorMessage: null));
      return;
    }
    emit(state.copyWith(
        isLoading: true, loadingButtons: LoadingButtons.verifyPhone));
    try {
      final datastate = await locator
          .get<AuthenticationRepository>()
          .verifyPhoneNumber(
              number: AuthenticationControllers.phoneNumber.text);

      if (datastate is DataSuccess) {
        emit(state.copyWith(
            loginResponse: datastate.data,
            loadingButtons: LoadingButtons.none));
        return;
      } else {
        errorMessage = 'someting went wrong';
      }
    } catch (e) {
      errorMessage = 'someting went wrong';
    }

    emit(state.copyWith(
        errorMessage: errorMessage,
        isLoading: false,
        loadingButtons: LoadingButtons.none));
    emit(state.copyWith(errorMessage: null));
  }
}
