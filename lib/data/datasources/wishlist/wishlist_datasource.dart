import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';

import '../../../core/network/api_end_points.dart';

part 'wishlist_datasource.g.dart';

@RestApi(baseUrl: '')
abstract class WishlistDatasource {
  factory WishlistDatasource(Dio dio) = _WishlistDatasource;

  @GET(ApiEndPoints.wishlist)
  Future<HttpResponse<List<ProductModel>>> getWishListsData();
}
