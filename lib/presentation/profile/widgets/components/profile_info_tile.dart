import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

class ProfileInfoTile extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoTile({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.oxygen(
              fontSize: 14, fontWeight: FontWeight.w700, color: AppColors.grey),
        ),
        const SizedBox(height: 17),
        Text(
          value,
          style: GoogleFonts.oxygen(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.black),
        ),
      ],
    );
  }
}
