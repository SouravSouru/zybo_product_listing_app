import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zybo_machine_test/data/models/banner_model/banner_model.dart';
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
    on<_FetchBannersData>(fetchBannersData);
  }

  FutureOr<void> fetchProductsData(
      HomeblocEvent event, Emitter<HomeblocState> emit) async {
    emit(state.copyWith(isProductsListLoading: true, isError: false));
    var homeDataState = await locator<HomeRepository>().getProductsList();
    if (homeDataState is DataSuccess) {
      emit(state.copyWith(
          productsList: homeDataState.data, isProductsListLoading: false));
    } else {
      emit(state.copyWith(
          productsList: [], isProductsListLoading: false, isError: true));
    }
  }

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
