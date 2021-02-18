class Constant {
  static const String keyLanguage = 'key_language';

  static const int status_success = 0;

  static const String wan_android = "https://www.wanandroid.com/";

  static const String server_address = wan_android;

  static const int type_sys_update = 1;
  static const int type_refresh_all = 5;

  static const String key_theme_color = 'key_theme_color';
  static const String key_guide = 'key_guide';
  static const String key_splash_model = 'key_splash_models';
}

class AppConfig {
  static const String appId = 'com.thl.flutter_stan';
  static const String appName = 'flutter_stan';
  static const String version = '1.0.0';
}

class LoadStatus {
  static const int fail = -1;
  static const int loading = 0;
  static const int success = 1;
  static const int empty = 2;
}
