import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
            import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';
import 'package:zybo_machine_test/shared/widgets/app_elevated_button.dart'; 
import '../../../../shared/widgets/app_back_button.dart';
import 'components/otp_input_fields.dart';

class OTPVerificationWidget extends StatelessWidget {
  const OTPVerificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          AppBackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 40),
          Text(
            "OTP VERIFICATION",
            style: GoogleFonts.oxygen(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.black),
          ),
          const SizedBox(height: 8),
          Text.rich(
            TextSpan(
              text: "Enter the OTP sent to -",
              style: GoogleFonts.oxygen(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey),
              children: [
                TextSpan(
                  text: " +91-8976500001",
                  style: GoogleFonts.oxygen(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Text.rich(
            TextSpan(
              text: "OTP is",
              style: GoogleFonts.oxygen(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black),
              children: [
                TextSpan(
                  text: " 4749",
                  style: GoogleFonts.oxygen(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          // OTP Input Fields
          const OtpInputFileds(),

          const SizedBox(height: 27),
          Center(
            child: Text(
              "00:120 Sec",
              style: GoogleFonts.oxygen(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey),
            ),
          ),
          const SizedBox(height: 10),

          // Resend OTP
          Center(
            child: Text.rich(
              TextSpan(
                text: "Didn’t receive code? ",
                style: GoogleFonts.oxygen(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
                children: [
                  TextSpan(
                    text: "Re-send",
                    style: GoogleFonts.oxygen(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff00E5A4)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Submit Button
          AppElevatedButton(text: "Submit", onPressed: () {})
        ],
      ),
    );
  }
}
