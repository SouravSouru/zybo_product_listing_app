import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import 'package:zybo_machine_test/bloc/bottom%20navigation/bottom_navigation_bloc.dart';
import 'package:zybo_machine_test/core/network/api_client.dart';

import 'bloc/splash/splash_bloc.dart';
import 'core/config/route/go_router.dart';
import 'injection/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  // API client initialization
  ApiClient.buildClient();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SplashBloc()..add(const SplashEvent.started()),
          ),
          BlocProvider(
            create: (context) => BottomNavigationBloc(),
          ),
        ],
        child: ToastificationWrapper(
          config: const ToastificationConfig(alignment: Alignment.topCenter),
          child: MaterialApp.router(
            title: 'ZYBO',
            debugShowCheckedModeBanner: false,
            routerConfig: router,
          ),
        ));
  }
}
