import 'package:flutter/material.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

import 'widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: const SafeArea(child: HomeWidget()),
    );
  }
}
