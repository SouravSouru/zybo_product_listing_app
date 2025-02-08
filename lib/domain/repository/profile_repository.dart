import 'package:zybo_machine_test/data/models/profile_model/profile_model.dart';

import '../../core/resources/data_state.dart';

abstract class ProfileRepository {
  Future<DataState<ProfileModel>> getProfileData();
}
