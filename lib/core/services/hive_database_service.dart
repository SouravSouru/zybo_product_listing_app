import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabaseService {
  static const String key = 'authKey@123';

  static Future<void> saveAuthToken(String authToken) async {
    final box = Hive.box('settings');
    await box.put(key, authToken);
  }

  static String getAuthToken() {
    final box = Hive.box('settings');
    final languageCode = box.get(key);
    return languageCode ?? "";
  }
}
