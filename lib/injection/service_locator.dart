import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:zybo_machine_test/data/datasources/home/home_datasource.dart';

import '../data/repository/home_repository_impl.dart';
import '../domain/repository/home_repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final Dio dio = Dio(); // Create Dio instance
  locator.registerSingleton<Dio>(dio); // Register Dio instance

  //Bloc Register
  // locator.registerFactory(() => AddCaseBloc(locator()));

  // Repository Register
    locator.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(locator()));

  // Data source Register
  locator.registerSingleton<HomeDataSource>(HomeDataSource(locator()));
}
