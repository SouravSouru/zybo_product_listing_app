part of 'homebloc_bloc.dart';

@freezed
class HomeblocState with _$HomeblocState {
  const factory HomeblocState({
    List<ProductModel>? productsList,
    required bool isLoading,
    required bool isError,
  }) = _HomeblocState;
  factory HomeblocState.initial() => const HomeblocState(isLoading: true,isError: false);
}
