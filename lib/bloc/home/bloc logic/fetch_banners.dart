import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/domain/repository/home_repository.dart';
import '../../../injection/service_locator.dart';

extension FetchBannersLogic on HomeblocBloc {
  FutureOr<void> fetchBannersData(
      HomeblocEvent event, Emitter<HomeblocState> emit) async {
    emit(state.copyWith(isBannersListLoading: true, isError: false));
    var homeDataState = await locator<HomeRepository>().getbanners();
    if (homeDataState is DataSuccess) {
      emit(state.copyWith(
          bannersList: homeDataState.data, isBannersListLoading: false));
    } else {
      emit(state.copyWith(
          bannersList: [], isBannersListLoading: false, isError: true));
    }
  }
}
