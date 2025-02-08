class Routes {
  static String splash = "/";
  static String main = "main";
  static String login = "login";
  static String otp = "otp";
  static String registration = "registration";
  static String search = "search";

  // ----------------------------------------------------

  static String getSplashRoute() => splash;
  static String getOtpVerificationRoute() => "/$otp";
  static String getRegistrationRoute() => "/$registration";
  static String getLoginRoute() => "/$login";
  static String getMainRoute() => "/$main";
  static String getSearchRoute() => "/$search";
}
