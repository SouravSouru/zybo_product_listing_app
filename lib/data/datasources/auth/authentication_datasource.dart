import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:zybo_machine_test/data/models/login_model/login_model.dart';

import '../../../core/network/api_end_points.dart';
import '../../models/register/register.dart';

part 'authentication_datasource.g.dart';

@RestApi(baseUrl: '')
abstract class AuthenticationDataSource {
  factory AuthenticationDataSource(Dio dio) = _AuthenticationDataSource;

  @POST(ApiEndPoints.verify)
  Future<HttpResponse<LoginModel>> verifyPhoneNumber({
    @Field() required String phone_number,
  });

  @POST(ApiEndPoints.register)
  Future<HttpResponse<Register>> register({
    @Field() required String phone_number,
    @Field() required String first_name,
  });
}
