import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/wishlist/wishlist_bloc.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/domain/repository/wishlist_repository.dart';
import '../../../injection/service_locator.dart';

extension FetchWishListLogic on WishlistBloc {
  FutureOr<void> fetchWishList(event, Emitter<WishlistState> emit) async {
    try {
      final datastate = await locator.get<WishlistRepository>().getWishLists();
      emit(state.copyWith(isLoading: true));

      if (datastate is DataSuccess) {
        print(datastate.data);
        emit(state.copyWith(wishlists: datastate.data ?? [], isLoading: false));
      } else {
        emit(state.copyWith(wishlists: [], isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(wishlists: [], isLoading: false));
    }
  }
}
