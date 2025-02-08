import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/domain/repository/home_repository.dart';
import '../../../injection/service_locator.dart';

extension FetchProductLogic on HomeblocBloc {
  FutureOr<void> fetchProductsData(
      HomeblocEvent event, Emitter<HomeblocState> emit) async {
    emit(state.copyWith(isError: false));
    var homeDataState = await locator<HomeRepository>().getProductsList();
    if (homeDataState is DataSuccess) {
      emit(state.copyWith(
          productsList: homeDataState.data, isProductsListLoading: false));
    } else {
      emit(state.copyWith(
          productsList: [], isProductsListLoading: false, isError: true));
    }
  }
}
