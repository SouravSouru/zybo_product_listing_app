import 'package:flutter/material.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AppBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 3),
            blurRadius: 11,
            spreadRadius: 0,
          ),
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.arrow_back),
        color: Colors.black,
        tooltip: 'Back',
      ),
    );
  }
}
