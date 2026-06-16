
import 'package:hive/hive.dart';
import 'package:base_demo_ob/ui/utils/app_constants/app_constants.dart';

class Session {
  Session._();


  static Session session = Session._();

  static var sessionBox = Hive.box(AppConstants.userBoxName);


  static String keyUserAccessToken = 'keyUserAuthToken';

  static String get userAccessToken => sessionBox.get(keyUserAccessToken) ?? 'wegthge';
  static set userAccessToken(String? userAccessToken) => saveLocalData(keyUserAccessToken, userAccessToken);


  static void saveLocalData(String key, dynamic value) {
    sessionBox.put(key, value);
  }

}