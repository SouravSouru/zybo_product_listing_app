import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zybo_machine_test/bloc/auth/auth_bloc.dart';
import 'package:zybo_machine_test/injection/service_locator.dart';
import 'package:zybo_machine_test/presentation/auth/registration/widgets/registration_widget.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.get<AuthBloc>(),
      child: const Scaffold(
        body: SafeArea(child: RegistrationWidget()),
      ),
    );
  }
}
