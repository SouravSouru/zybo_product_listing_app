import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

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

        AlignedGridView.count(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          crossAxisSpacing: 16,
          mainAxisSpacing: 24,
          crossAxisCount: 2,
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const ProductCard(
              imageUrl:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrNU62jLjaRJ2XvCKDbaXhrVbvO5nO9n5cvA&s",
              title: "Grain Peppers",
              oldPrice: "₹800",
              newPrice: "₹599",
              rating: 4.5,
            );
          },
        ),
      ],
    );
  }
}
