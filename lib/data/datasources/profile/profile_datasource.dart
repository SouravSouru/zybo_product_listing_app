import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zybo_machine_test/data/models/profile_model/profile_model.dart';

import '../../../core/network/api_end_points.dart';

part 'profile_datasource.g.dart';

@RestApi(baseUrl: '')
abstract class ProfileDataSource {
  factory ProfileDataSource(Dio dio) = _ProfileDataSource;

  @GET(ApiEndPoints.profile)
  Future<HttpResponse<ProfileModel>> getProfile();
}
