import 'package:dio/dio.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
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
}
