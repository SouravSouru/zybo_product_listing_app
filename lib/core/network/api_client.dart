import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

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
    final dio = locator<Dio>(); // You can customize Dio instance if needed

    dio.options.baseUrl = '';
    dio.options.headers = {
      // if (getUserData()?.authToken.isNotEmpty ?? false)
      //   'Authorization': "Bearer ${getUserData()?.authToken ?? ""}",
    };

    return ApiService(dio);
  }
}
