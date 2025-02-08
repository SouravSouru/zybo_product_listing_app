import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/bloc/wishlist/bloc%20logic/fetch_wishlist.dart';
import 'package:zybo_machine_test/bloc/wishlist/wishlist_bloc.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/domain/repository/wishlist_repository.dart';
import '../../../injection/service_locator.dart';

extension UpdateWishListLogic on WishlistBloc {
  FutureOr<void> updateWishlist(
      UpdateWishlist event, Emitter<WishlistState> emit) async {
    try {
      final datastate = await locator
          .get<WishlistRepository>()
          .updateWishlist(productId: event.productId);

      if (datastate is DataSuccess) {
        await fetchWishList(const WishlistEvent.fetchWishLists(), emit);
      
        locator
            .get<HomeblocBloc>()
            .add(const HomeblocEvent.fetchProductsData());
      }
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
