import 'package:flutter/material.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

import 'widgets/wishlist_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: const SafeArea(child: WishlistWidget()),
    );
  }
}
