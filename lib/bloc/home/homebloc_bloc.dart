import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zybo_machine_test/data/models/banner_model/banner_model.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';
import 'package:zybo_machine_test/bloc/home/bloc%20logic/fetch_products.dart';
import 'package:zybo_machine_test/bloc/home/bloc%20logic/fetch_banners.dart';
import 'package:zybo_machine_test/bloc/home/bloc%20logic/search_products.dart';

part 'homebloc_event.dart';
part 'homebloc_state.dart';
part 'homebloc_bloc.freezed.dart';

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocState.initial()) {
    on<_FetchProductsData>(fetchProductsData);
    on<_FetchBannersData>(fetchBannersData);
    on<_SearchProduct>(searchProduct);
  }
}
