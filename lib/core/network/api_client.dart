import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zybo_machine_test/core/services/hive_database_service.dart';

import '../../injection/service_locator.dart';

// Define your Retrofit service interface
@RestApi(baseUrl: "")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}

// Implement your Retrofit service interface
class _ApiService implements ApiService {
  _ApiService(this._dio, {this.baseUrl});

  final Dio _dio;
  final String? baseUrl;
}

// Define your ApiClient
class ApiClient {
  static ApiService buildClient() {
    final dio = locator<Dio>();

    dio.options.baseUrl = 'https://admin.kushinirestaurant.com/api/';
    dio.options.headers = {
      if (HiveDatabaseService.getAuthToken() != '')
        'Authorization': "Bearer ${HiveDatabaseService.getAuthToken()}",
    };

    return ApiService(dio);
  }
}
