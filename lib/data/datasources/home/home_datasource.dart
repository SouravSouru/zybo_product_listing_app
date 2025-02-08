import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zybo_machine_test/data/models/banner_model/banner_model.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';

import '../../../core/network/api_end_points.dart';

part 'home_datasource.g.dart';

@RestApi(baseUrl: '')
abstract class HomeDataSource {
  factory HomeDataSource(Dio dio) = _HomeDataSource;

  @GET(ApiEndPoints.productsList)
  Future<HttpResponse<List<ProductModel>>> getProductsList();

  @GET(ApiEndPoints.banners)
  Future<HttpResponse<List<BannerModel>>> getBanners();

  @POST(ApiEndPoints.search)
  Future<HttpResponse<List<ProductModel>>> searchProduct(
      {@Field() required String query});
}
