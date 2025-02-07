import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
        Expanded(
          child: AlignedGridView.count(
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            crossAxisSpacing: 16,
            mainAxisSpacing: 24,
            crossAxisCount: 2,
            itemCount: 20,
            itemBuilder: (context, index) {
              return const ProductCard(
                imageUrl:
                    "https://hips.hearstapps.com/hmg-prod/images/pasta-salad-horizontal-jpg-1522265695.jpg?crop=0.6668xw:1xh;center,top&resize=1200:*", // Replace with actual image URL
                title: "Grain Peppers",
                oldPrice: "₹800",
                newPrice: "₹599",
                rating: 4.5,
              );
            },
          ),
        ),
      ],
    );
  }
}
