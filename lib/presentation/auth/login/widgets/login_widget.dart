import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/core/utilities/enums/enums.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

import '../../../../bloc/auth/auth_bloc.dart';
import '../../../../core/config/route/route_constants.dart';
import '../../../../shared/widgets/app_custom_snackbar.dart';
import '../../../../shared/widgets/app_elevated_button.dart';
import 'components/phone_number_textfiled.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.loginResponse?.otp != null && state.errorMessage == null) {
          context.push(Routes.getOtpVerificationRoute());
        }
        if (state.errorMessage != null) {
          SnackBarFailure(
            messageText: state.errorMessage ?? "",
          ).show();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 135,
            ),
            Text(
              "Login",
              style: GoogleFonts.oxygen(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black),
            ),
            const SizedBox(height: 10),
            Text(
              "Let's Connect with Lorem Ipsum..!",
              style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey),
            ),
            const SizedBox(height: 40),
            const PhoneNumberTextField(),
            const SizedBox(height: 24),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return AppElevatedButton(
                  text: "Continue",
                  isLoading: state.loadingButtons == LoadingButtons.verifyPhone,
                  onPressed: () {
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.verifyPhonenumber());
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    text: "By Continuing you accept the ",
                    style: GoogleFonts.oxygen(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black),
                    children: [
                      TextSpan(
                        text: "Terms of Use",
                        style: GoogleFonts.oxygen(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            color: AppColors.black),
                      ),
                      TextSpan(
                        text: " & ",
                        style: GoogleFonts.oxygen(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            color: AppColors.black),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: GoogleFonts.oxygen(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            color: AppColors.black),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
