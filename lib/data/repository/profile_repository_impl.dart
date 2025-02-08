import 'package:dio/dio.dart';
import 'package:zybo_machine_test/core/resources/data_state.dart';
import 'package:zybo_machine_test/data/datasources/profile/profile_datasource.dart';
import 'package:zybo_machine_test/data/models/profile_model/profile_model.dart';

import '../../domain/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _profileDataSource;
  ProfileRepositoryImpl(this._profileDataSource);
  @override
  Future<DataState<ProfileModel>> getProfileData() async {
    try {
      final httpResponse = await _profileDataSource.getProfile();
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
