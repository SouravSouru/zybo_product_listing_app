import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/core/utilities/controllers/controllers.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

class NameTextFields extends StatelessWidget {
  const NameTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      controller: AuthenticationControllers.name,
      decoration: InputDecoration(
        hintText: "Enter Full Name",
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.10))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.10))),
        hintStyle: GoogleFonts.oxygen(
            fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.grey),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.10))),
      ),
    );
  }
}
