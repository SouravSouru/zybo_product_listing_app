part of 'homebloc_bloc.dart';

@freezed
class HomeblocState with _$HomeblocState {
  const factory HomeblocState({
    List<ProductModel>? productsList,
    List<BannerModel>? bannersList,
    required bool isProductsListLoading,
    required bool isBannersListLoading,
    required bool isError,
  }) = _HomeblocState;
  factory HomeblocState.initial() => const HomeblocState(
      isProductsListLoading: true, isError: false, isBannersListLoading: true);
}
