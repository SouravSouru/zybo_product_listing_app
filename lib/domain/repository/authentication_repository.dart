import 'package:zybo_machine_test/data/models/login_model/login_model.dart';
import 'package:zybo_machine_test/data/models/register/register.dart';

import '../../core/resources/data_state.dart';

abstract class AuthenticationRepository {
  Future<DataState<LoginModel>> verifyPhoneNumber({required String number});
  Future<DataState<Register>> register(
      {required String number, required String name});
}
