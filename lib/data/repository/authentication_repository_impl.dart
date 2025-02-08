import 'package:dio/dio.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/data/datasources/auth/authentication_datasource.dart';
import 'package:zybo_machine_test/data/models/login_model/login_model.dart';
import 'package:zybo_machine_test/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource _authenticationDataSource;
  AuthenticationRepositoryImpl(this._authenticationDataSource);

  @override
  Future<DataState<LoginModel>> verifyPhoneNumber(
      {required String number}) async {
    try {
      final httpResponse = await _authenticationDataSource.verifyPhoneNumber(
          phone_number: number);
      if (httpResponse.response.statusCode == 200) {
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
