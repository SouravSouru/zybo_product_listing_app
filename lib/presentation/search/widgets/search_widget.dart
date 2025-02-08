import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';
import 'package:zybo_machine_test/presentation/home/widgets/components/shimmer_product_card.dart';
import 'package:zybo_machine_test/presentation/search/widgets/components/search_fields.dart';
import 'package:zybo_machine_test/presentation/wishlist/widgets/components/product_card.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const SearchField(),
        const SizedBox(height: 26),
        Visibility(
          child: BlocBuilder<HomeblocBloc, HomeblocState>(
            builder: (context, state) {
              if (state.searchProductList.isEmpty &&
                  state.isSearchLoading == false) {
                return const Expanded(
                  child: Center(
                    child: Text(
                      'No Product',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }
          
              if (state.isSearchLoading) {
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
                  itemCount: state.searchProductList.length,
                  itemBuilder: (context, index) {
                    final List<ProductModel> products =
                        state.searchProductList ?? [];
                    final ProductModel product = products[index];
                    return ProductCard(
                      productDetails: product,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
