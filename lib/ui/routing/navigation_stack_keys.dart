

class
Keys {
  Keys._();

  static Keys keys = Keys._();

  /// Splash
  static const splash = 'splash';
  static const error = 'error';
  static const home = 'home';

}

class QueryParam {
  QueryParam._();

  static QueryParam queryParam = QueryParam._();
}

class NavigationStackKeyMapper {
  NavigationStackKeyMapper._();

  List<String> keysList = [];
  String currentKey = '';

  static NavigationStackKeyMapper mapper =
  NavigationStackKeyMapper._();

  static Map<String, String> keyValueMapper = {
    /// Splash
    Keys.splash: 'Splash',

    /// Error
    Keys.error: 'Error',

    Keys.home: 'Home'
  };

  static String value(String key) =>
      keyValueMapper[key] ?? '';
}