import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:zybo_machine_test/bloc/auth/auth_bloc.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';

import '../../../core/services/hive_database_service.dart';
import '../../../core/utilities/controllers/controllers.dart';
import '../../../domain/repository/authentication_repository.dart';
import '../../../injection/service_locator.dart';

extension RegisterAccountLogic on AuthBloc {
  FutureOr<void> registerAccount(event, Emitter<AuthState> emit) async {
    String? errorMessage;
    if (AuthenticationControllers.name.text.isEmpty) {
      errorMessage = "Please enter the name";
    }

    if (errorMessage != null) {
      emit(state.copyWith(errorMessage: errorMessage));
      emit(state.copyWith(errorMessage: null));
    }

    try {
      final datastate = await locator.get<AuthenticationRepository>().register(
          number: AuthenticationControllers.phoneNumber.text,
          name: AuthenticationControllers.name.text);
      emit(state.copyWith(isLoading: true));

      if (datastate is DataSuccess) {
        emit(state.copyWith(
          registerResponse: datastate.data,
        ));
        // storing auth token to hive
        HiveDatabaseService.saveAuthToken(
            state.registerResponse?.token?.access ?? "");

        //  updating header for passing token
        final dio = locator<Dio>();
        dio.options.headers = {
          ...dio.options.headers,
          'Authorization': "Bearer ${HiveDatabaseService.getAuthToken()}",
        };
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
