part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
    required List<ProductModel> wishlists,
    required bool isLoading,
  }) = _WishlistState;
  factory WishlistState.initial() =>
      const WishlistState(isLoading: true, wishlists: []);
}
