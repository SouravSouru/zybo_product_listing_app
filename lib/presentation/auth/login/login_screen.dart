import 'package:flutter/material.dart';
import 'package:zybo_machine_test/presentation/auth/login/widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginWidget(),
      ),
    );
  }
}
