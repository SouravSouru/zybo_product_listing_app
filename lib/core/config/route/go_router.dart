import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zybo_machine_test/presentation/auth/login/login_screen.dart';
import 'package:zybo_machine_test/presentation/auth/otp%20verification/otp_verification_screen.dart';
import 'package:zybo_machine_test/presentation/auth/otp%20verification/widgets/otp_widget.dart';
import 'package:zybo_machine_test/presentation/main/main_screen.dart';

import '../../../presentation/splash/splash_screen.dart';
import 'route_constants.dart';
import 'transition.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: Routes.getSplashRoute(),
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      name: Routes.splash,
      path: Routes.getSplashRoute(),
      pageBuilder: (context, state) =>
          buildPageWithFadeTransition(const SplashScreen(), state),
    ),
    GoRoute(
      name: Routes.login,
      path: Routes.getLoginRoute(),
      pageBuilder: (context, state) =>
          buildPageWithFadeTransition(const LoginScreen(), state),
    ),
    GoRoute(
      name: Routes.otp,
      path: Routes.getOtpVerificationRoute(),
      pageBuilder: (context, state) =>
          buildPageWithFadeTransition(const OTPVerificationScreen(), state),
    ),
    GoRoute(
      name: Routes.main,
      path: Routes.getMainRoute(),
      pageBuilder: (context, state) =>
          buildPageWithFadeTransition(const MainScreen(), state),
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text("Page not fount"),
    ),
  ),
  redirect: (context, state) {
    return null;
  },
);
