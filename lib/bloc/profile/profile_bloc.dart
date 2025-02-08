import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zybo_machine_test/data/models/profile_model/profile_model.dart';
import 'package:zybo_machine_test/domain/repository/profile_repository.dart';

import '../../core/resources/data_state.dart';
import '../../injection/service_locator.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<FetchProfile>(fetchProfile);
  }

  FutureOr<void> fetchProfile(
      FetchProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));
    var profileDataState = await locator<ProfileRepository>().getProfileData();
    if (profileDataState is DataSuccess) {
      emit(
          state.copyWith(profileData: profileDataState.data, isLoading: false));
    } else {
      emit(state.copyWith(profileData: null, isLoading: false));
    }
  }
}
