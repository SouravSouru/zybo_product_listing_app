import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final Dio dio = Dio(); // Create Dio instance
  locator.registerSingleton<Dio>(dio); // Register Dio instance

  //Bloc Register
  // locator.registerFactory(() => AddCaseBloc(locator()));

  // Repository Register
  // locator.registerLazySingleton<AppConfigRepository>(
  //     () => AppConfigRepositoryImpl(locator()));

  // Data source Register
  // locator
  //     .registerSingleton<AppConfigDataSource>(AppConfigDataSource(locator()));
}
