import 'package:flutter/material.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

import 'widgets/otp_widget.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: const SafeArea(
        child: OTPVerificationWidget(),
      ),
    );
  }
}
