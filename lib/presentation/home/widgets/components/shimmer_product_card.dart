import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProductCard extends StatelessWidget {
  const ShimmerProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 150,
        height: 220,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 15,
              width: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 5),
            Container(
              height: 12,
              width: 50,
              color: Colors.white,
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  height: 12,
                  width: 30,
                  color: Colors.white,
                ),
                const Spacer(),
                Container(
                  height: 12,
                  width: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
