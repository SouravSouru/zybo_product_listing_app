part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.fetchWishLists() = FetchWishList;
  const factory WishlistEvent.updateWishlist({required String productId}) = UpdateWishlist;
}
