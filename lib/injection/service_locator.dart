import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:zybo_machine_test/bloc/auth/auth_bloc.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/bloc/wishlist/wishlist_bloc.dart';
import 'package:zybo_machine_test/data/datasources/auth/authentication_datasource.dart';
import 'package:zybo_machine_test/data/datasources/home/home_datasource.dart';
import 'package:zybo_machine_test/data/datasources/profile/profile_datasource.dart';
import 'package:zybo_machine_test/data/datasources/wishlist/wishlist_datasource.dart';
import 'package:zybo_machine_test/data/repository/authentication_repository_impl.dart';
import 'package:zybo_machine_test/data/repository/profile_repository_impl.dart';
import 'package:zybo_machine_test/data/repository/wishlist_repository_impl.dart';
import 'package:zybo_machine_test/domain/repository/authentication_repository.dart';
import 'package:zybo_machine_test/domain/repository/profile_repository.dart';
import 'package:zybo_machine_test/domain/repository/wishlist_repository.dart';

import '../data/repository/home_repository_impl.dart';
import '../domain/repository/home_repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final Dio dio = Dio(); // Create Dio instance
  locator.registerSingleton<Dio>(dio); // Register Dio instance

  //Bloc Register
  locator.registerLazySingleton(() => AuthBloc());
  locator.registerLazySingleton(() => HomeblocBloc());
  locator.registerLazySingleton(() => WishlistBloc());

  // Repository Register
  locator.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(locator()));
  locator.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(locator()));
  locator.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(locator()));
  locator.registerLazySingleton<WishlistRepository>(
      () => WishlistRepositoryImpl(locator()));

  // Data source Register
  locator.registerSingleton<HomeDataSource>(HomeDataSource(locator()));
  locator.registerSingleton<AuthenticationDataSource>(
      AuthenticationDataSource(locator()));
  locator.registerSingleton<ProfileDataSource>(ProfileDataSource(locator()));
  locator.registerSingleton<WishlistDatasource>(WishlistDatasource(locator()));
}
