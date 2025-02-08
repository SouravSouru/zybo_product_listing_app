import 'package:flutter/material.dart';
import 'package:zybo_machine_test/presentation/auth/registration/widgets/registration_widget.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: RegistrationWidget()),
    );
  }
}
