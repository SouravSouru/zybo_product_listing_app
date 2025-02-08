import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';
import 'package:zybo_machine_test/presentation/home/widgets/components/shimmer_product_card.dart';

import '../../../bloc/wishlist/wishlist_bloc.dart';
import 'components/product_card.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16, top: 10),
          child: Text(
            "Wishlist",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 26),
        BlocBuilder<WishlistBloc, WishlistState>(
          builder: (context, state) {
            if (state.wishlists.isEmpty) {
              return Builder(builder: (context) {
                return const Expanded(
                  child: Center(
                    child: Text(
                      'No WishList',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              });
            }

            if (state.isLoading) {
              return Expanded(
                child: AlignedGridView.count(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 24,
                  crossAxisCount: 2,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const ShimmerProductCard();
                  },
                ),
              );
            }
            return Expanded(
              child: AlignedGridView.count(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                crossAxisSpacing: 16,
                mainAxisSpacing: 24,
                crossAxisCount: 2,
                itemCount: 20,
                itemBuilder: (context, index) {
                  final List<ProductModel> products = state.wishlists ?? [];
                  final ProductModel? product = products[index];
                  return ProductCard(
                    imageUrl: product?.featuredImage ?? "",
                    title: product?.name ?? "N/A",
                    oldPrice: "₹${product?.mrp ?? 0}",
                    newPrice: "₹${product?.salePrice ?? 0}",
                    rating: product?.avgRating?.toDouble() ?? 0.0,
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
