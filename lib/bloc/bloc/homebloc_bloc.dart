import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';
import 'package:zybo_machine_test/domain/repository/home_repository.dart';

import '../../core/resources/data_state.dart';
import '../../injection/service_locator.dart';

part 'homebloc_event.dart';
part 'homebloc_state.dart';
part 'homebloc_bloc.freezed.dart';

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocState.initial()) {
    on<_FetchProductsData>(fetchProductsData);
  }

  FutureOr<void> fetchProductsData(
      HomeblocEvent event, Emitter<HomeblocState> emit) async {
    emit(state.copyWith(isLoading: true, isError: false));
    var homeDataState = await locator<HomeRepository>().getProductsList();
    if (homeDataState is DataSuccess) {
      emit(state.copyWith(productsList: homeDataState.data, isLoading: false));
    } else {
      emit(state.copyWith(productsList: [], isLoading: false, isError: true));
    }
  }
}
