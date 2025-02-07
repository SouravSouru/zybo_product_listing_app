import 'dart:io';

import 'package:dio/dio.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/data/datasources/home/home_datasource.dart';
import 'package:zybo_machine_test/data/models/product_model/product.dart';
import 'package:zybo_machine_test/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _homeDatasource;
  HomeRepositoryImpl(this._homeDatasource);
  @override
  Future<DataState<List<ProductModel>>> getProductsList() async {
    try {
      final httpResponse = await _homeDatasource.getProductsList();
      if (httpResponse.data.isNotEmpty) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(httpResponse.data);
      }
    } on DioException catch (e) {
      return DataException(DioException(
          requestOptions: e.requestOptions,
          error: e.error,
          message: e.message,
          response: e.response,
          stackTrace: e.stackTrace,
          type: e.type));
    }
  }
}
