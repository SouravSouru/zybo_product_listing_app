import 'package:flutter/material.dart';
import 'package:zybo_machine_test/core/generated/generated_assets.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final bool? isLoading;

  const AppElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: (isLoading ?? false)
            ? Image.asset(Assets.assetsGifsSpinningLoader)
            : Text(
                text,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
      ),
    );
  }
}
