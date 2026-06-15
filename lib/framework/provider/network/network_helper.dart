import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:base_demo_ob/ui/utils/app_constants/app_constants.dart';

class NetworkHelper {
  static Future<bool> hasInternet() async {
    var connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult[0] == ConnectivityResult.none) {
      showLog("returning false after checking internet===========");
      return false;
    }
    return true;
  }
}