class ApiEndPoints {
  static const int apiStatus200 = 200;
  static const int apiStatus201 = 201;
  static const int apiStatus401 = 401;
  static const int apiStatus402 = 402;
  static const int apiStatus403 = 403;
  static const int apiStatus404 = 404;
  static const int apiStatus405 = 405;
  static const int apiStatus500 = 500;

  static const String baseUrl =  'https://service.odigo-clinic.kodyinfotech.com/odigo/medic/';
  static const String users = "users";

  // auth
  static const String login = 'login';
  static const String dashboardCount = 'dashboard/count';


  static String getStateList(int pageNo, int pageSize) => '/state/list?pageNumber=$pageNo&pageSize=$pageSize';

  static String getCityList(int pageNo, int pageSize) => '/city/list?pageNumber=$pageNo&pageSize=$pageSize';

  static String defaultAdsList(int pageNo, int dataSize) => '/default/ads/list?pageNumber=$pageNo&pageSize=$dataSize';
}