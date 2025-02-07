import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:zybo_machine_test/core/config/route/route_constants.dart';
import 'package:zybo_machine_test/core/generated/generated_assets.dart';

import '../../bloc/splash/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state == const SplashState.completed()) {
            context.go(Routes.getLoginRoute());
          }
        },
        child: Center(
          child: SvgPicture.asset(Assets.assetsSvgsLogo),
        ),
      ),
    );
  }
}
