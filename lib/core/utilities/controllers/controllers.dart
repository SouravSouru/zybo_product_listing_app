import 'package:flutter/material.dart';

class AuthenticationControllers {
  static TextEditingController phoneNumber = TextEditingController();
  static TextEditingController otp = TextEditingController();
  static TextEditingController name = TextEditingController();
  static clear() {
    phoneNumber.clear();
    otp.clear();
    name.clear();
  }
}
