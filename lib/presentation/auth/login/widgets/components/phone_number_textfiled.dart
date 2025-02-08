import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/core/utilities/controllers/controllers.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              readOnly: true,
              decoration: InputDecoration(
                hintText: " +91",
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(.10))),
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(.10))),
                hintStyle: GoogleFonts.oxygen(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
                border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(.10))),
              ),
            ),
          ),
        ),
        Expanded(
          child: TextField(
            keyboardType: TextInputType.phone,
            controller: AuthenticationControllers.phoneNumber,
            decoration: InputDecoration(
              hintText: "Enter Phone",
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.10))),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.10))),
              hintStyle: GoogleFonts.oxygen(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.10))),
            ),
          ),
        ),
      ],
    );
  }
}
