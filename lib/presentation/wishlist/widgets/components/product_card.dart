import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/core/generated/generated_assets.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String oldPrice;
  final String newPrice;
  final double rating;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
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
                  imageUrl: imageUrl,
                  height: 176,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: SvgPicture.asset(
                  Assets.assetsSvgsFavicon,
                  height: 24,
                  width: 24,
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
                    Row(
                      children: [
                        Text(oldPrice,
                            style: GoogleFonts.heebo(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey)),
                        const SizedBox(width: 4),
                        Text(newPrice,
                            style: GoogleFonts.heebo(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor)),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 20),
                        Text("$rating",
                            style: GoogleFonts.heebo(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(title,
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
