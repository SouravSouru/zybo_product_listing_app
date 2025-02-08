import 'package:zybo_machine_test/data/models/product_model/product.dart';
import 'package:zybo_machine_test/data/models/update_wishlist_response_model/update_wishlist_response_model.dart';

import '../../core/resources/data_state.dart';

abstract class WishlistRepository {
  Future<DataState<List<ProductModel>>> getWishLists();
  Future<DataState<UpdateWishlistResponseModel>> updateWishlist({required String productId});
}
