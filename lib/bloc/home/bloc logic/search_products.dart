import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/domain/repository/home_repository.dart';
import '../../../core/utilities/controllers/controllers.dart';
import '../../../injection/service_locator.dart';

extension SearchProductsLogic on HomeblocBloc {
  FutureOr<void> searchProduct(event, Emitter<HomeblocState> emit) async {
    emit(state.copyWith(isSearchLoading: true, isError: false));
    var homeDataState = await locator<HomeRepository>()
        .searchProduct(search: HomeControllers.search.text);
    if (homeDataState is DataSuccess) {
      emit(state.copyWith(
          searchProductList: homeDataState.data ?? [], isSearchLoading: false));
    } else {
      emit(state.copyWith(
        searchProductList: [],
        isSearchLoading: false,
      ));
    }
  }
}
