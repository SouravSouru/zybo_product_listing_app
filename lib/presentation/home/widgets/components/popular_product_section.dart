import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';
import '../../../../bloc/bloc/homebloc_bloc.dart';
import '../../../wishlist/widgets/components/product_card.dart';

class PopularProductSection extends StatelessWidget {
  const PopularProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Popular Product",
                style: GoogleFonts.heebo(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        // Popular Product Grid

        BlocBuilder<HomeblocBloc, HomeblocState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const CircularProgressIndicator();
            }
            return AlignedGridView.count(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 24,
              crossAxisCount: 2,
              itemCount: state.productsList?.length ?? 0,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final ProductModel? product = state.productsList?[index];
                return ProductCard(
                  imageUrl: product?.featuredImage ?? "",
                  title: product?.name ?? "N/A",
                  oldPrice: "₹${product?.mrp ?? 0}",
                  newPrice: "₹${product?.salePrice ?? 0}",
                  rating: product?.avgRating?.toDouble() ?? 0.0,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
