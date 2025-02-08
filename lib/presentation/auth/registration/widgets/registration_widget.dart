import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zybo_machine_test/core/config/route/route_constants.dart';
import 'package:zybo_machine_test/presentation/auth/registration/widgets/components/name_textfields.dart';
import 'package:zybo_machine_test/shared/widgets/app_elevated_button.dart';
import '../../../../shared/widgets/app_back_button.dart';

class RegistrationWidget extends StatelessWidget {
  const RegistrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          AppBackButton(
            onPressed: () {
              context.pop();
            },
          ),
          const SizedBox(height: 40),
          const NameTextFields(),
          const SizedBox(height: 27),
          AppElevatedButton(
              text: "Submit",
              onPressed: () {
                context.go(Routes.getMainRoute());
              })
        ],
      ),
    );
  }
}
