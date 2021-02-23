import 'package:flutter/material.dart';
import 'package:flutterlearn/pages/android_native/url_launcher_test.dart';

class RouteConfig {
  static const String HOME = "/";
  static const String HAS_PARAM = "/hasparam";
  static const String NO_PARAM = "/noparam";
  static const String REGISTER_PAGE = "/register";
  static const String LOGIN_PAGE = "/login";
  static const String LOGIN_SUCCESSFUL = "/login_successful";
  static const String LOGIN_REGISTER_MAIN = "/login_register_main";
  static const String SHUCHANG_MAIN = "/shuchangmainpage";
  static const String NEWS_INFO = "/news_info";
  static const String TABBAR_BOTTOM_MAIN = "/tabbar_bottom_main";
  static const String SHARED_PREFERENCE_HELP = "/spHelperpage_help";

  static final Map<String, Function> configRoutes = {
    HOME: () => UrlLauncherTest()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(builder: (context) {
        Function pageBuilder = configRoutes[settings.name];
        if (pageBuilder != null) {
          if (settings.arguments == null) {
            return pageBuilder();
          } else {
            return pageBuilder(settings.arguments);
          }
        }
        return null;
      });
}
