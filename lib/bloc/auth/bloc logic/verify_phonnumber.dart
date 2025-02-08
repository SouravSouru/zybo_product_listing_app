import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/auth/auth_bloc.dart';

import '../../../core/resources/data_state.dart';
import '../../../core/utilities/controllers/controllers.dart';
import '../../../core/utilities/enums/enums.dart';
import '../../../data/models/result/result.dart';
import '../../../domain/repository/authentication_repository.dart';
import '../../../injection/service_locator.dart';

extension VerifyPhonenumberLogic on AuthBloc {
  FutureOr<void> verifyPhonenumber(event, Emitter<AuthState> emit) async {
    String? errorMessage;
    if (AuthenticationControllers.phoneNumber.text.isEmpty) {
      errorMessage = "Please enter the phone number";

      // newResult = const Result(
      //     errorType: ErrorType.validation,
      //     isSuccess: false,
      //     message: "Please enter the phone number");
    } else if (AuthenticationControllers.phoneNumber.text.length != 10) {
      errorMessage = "Please enter the valid phone number";
      // newResult = const Result(
      //     errorType: ErrorType.validation,
      //     isSuccess: false,
      //     message: "Please enter the valid phone number");
    }
    if (errorMessage != null) {
      emit(state.copyWith(errorMessage: errorMessage));
      emit(state.copyWith(errorMessage: null));
      return;
    }
    try {
      final datastate = await locator
          .get<AuthenticationRepository>()
          .verifyPhoneNumber(
              number: AuthenticationControllers.phoneNumber.text);
      emit(state.copyWith(isLoading: true));

      if (datastate is DataSuccess) {
        // final analyticsService = GetIt.I.get<AnalyticsService>();
        // analyticsService.logEvent(eventName: "user_login")

        //  Hive user data storing
        // final convertedData = convertUserModel(datastate.data);
        // await locator.get<UserRepository>().addUserData(convertedData);

        //  updating header for passing token
        // final dio = locator<Dio>();
        // dio.options.headers = {
        //   ...dio.options.headers,
        //   'Authorization': "Bearer ${getUserData()?.authToken ?? ""}",
        // };

        emit(state.copyWith(
          loginResponse: datastate.data,
        ));
      } else {
        errorMessage = 'someting went wrong';
      }
    } catch (e) {
      errorMessage = 'someting went wrong';
    }

    emit(state.copyWith(errorMessage: errorMessage, isLoading: false));
    emit(state.copyWith(errorMessage: null));
  }
}
