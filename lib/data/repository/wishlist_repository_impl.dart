import 'package:dio/dio.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/data/models/update_wishlist_response_model/update_wishlist_response_model.dart';
import '../../domain/repository/wishlist_repository.dart';
import '../datasources/wishlist/wishlist_datasource.dart';
import '../models/product_model/product.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final WishlistDatasource _wishlistDataSource;
  WishlistRepositoryImpl(this._wishlistDataSource);
  @override
  Future<DataState<List<ProductModel>>> getWishLists() async {
    try {
      final httpResponse = await _wishlistDataSource.getWishListsData();
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(httpResponse.data);
      }
    } on DioException catch (e) {
      return DataException(DioException(
          requestOptions: e.requestOptions,
          error: e.error,
          message: e.message,
          response: e.response,
          stackTrace: e.stackTrace,
          type: e.type));
    }
  }

  @override
  Future<DataState<UpdateWishlistResponseModel>> updateWishlist(
      {required String productId}) async {
    try {
      final httpResponse =
          await _wishlistDataSource.updateWishlist(product_id: productId);
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(httpResponse.data);
      }
    } on DioException catch (e) {
      return DataException(DioException(
          requestOptions: e.requestOptions,
          error: e.error,
          message: e.message,
          response: e.response,
          stackTrace: e.stackTrace,
          type: e.type));
    }
  }
}
