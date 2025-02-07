import 'package:flutter/material.dart';
import 'package:zybo_machine_test/presentation/home/widgets/components/search_bar.dart';
import 'components/banner_slider.dart';
import 'components/latest_product_section.dart';
import 'components/popular_product_section.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          // Search Bar
          Searchbar(),
          SizedBox(height: 24),
          // Banner Slider
          BannerSlider(),
          SizedBox(height: 16),
          // Popular product
          PopularProductSection(),
          SizedBox(height: 16),
          // Latest Product
          LatestProductSection()
        ],
      ),
    );
  }
}
