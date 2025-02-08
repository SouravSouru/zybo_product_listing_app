import 'package:zybo_machine_test/data/models/banner_model/banner_model.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';

import '../../core/resources/data_state.dart';

abstract class HomeRepository {
  Future<DataState<List<ProductModel>>> getProductsList();
  Future<DataState<List<BannerModel>>> getbanners();
  Future<DataState<List<ProductModel>>> searchProduct({required String search});
}
