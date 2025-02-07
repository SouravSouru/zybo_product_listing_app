class Routes {
  static String splash = "/";
  static String main = "main";
  static String login = "login";
  static String otp = "otp";

  // ----------------------------------------------------

  static String getSplashRoute() => splash;
  static String getOtpVerificationRoute() =>"/$otp";
  static String getLoginRoute() => "/$login";
  static String getMainRoute() => "/$main";
}
