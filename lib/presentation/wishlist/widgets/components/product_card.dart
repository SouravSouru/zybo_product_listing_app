import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/bloc/wishlist/wishlist_bloc.dart';
import 'package:zybo_machine_test/core/generated/generated_assets.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? productDetails;

  const ProductCard({
    super.key,
    required this.productDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  imageUrl: productDetails?.featuredImage ?? "",
                  height: 176,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: InkWell(
                  onTap: () {
                    context.read<WishlistBloc>().add(
                        WishlistEvent.updateWishlist(
                            productId: "${productDetails?.id ?? 0}"));
                  },
                  child: SvgPicture.asset(
                    (productDetails?.inWishlist ?? false)
                        ? Assets.assetsSvgsFavicon
                        : Assets.assetsSvgsLike,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Flexible(
                            child: Text("₹${productDetails?.mrp ?? 0}",
                                style: GoogleFonts.heebo(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey)),
                          ),
                          const SizedBox(width: 4),
                          Flexible(
                            child: Text("₹${productDetails?.salePrice ?? 0}",
                                style: GoogleFonts.heebo(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 20),
                        Text("${productDetails?.avgRating}",
                            style: GoogleFonts.heebo(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(productDetails?.name ?? "N/A",
                    style: GoogleFonts.heebo(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
