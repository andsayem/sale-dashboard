import 'package:flutter/material.dart';
import 'package:shopx/views/screens/login/login_screen.dart';
import 'package:shopx/views/screens/tabs/tabs.dart';
// import 'package:openingscreendemo/views/login_screen.dart';
// import 'package:openingscreendemo/views/menu.dart';
//import 'package:openingscreendemo/views/register_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String menu = '/menu';
  static const String authpassword = '/auth-password';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => LoginScreen(),
      // authRegister: (context) => Register(),
      // authpassword: (context) => authpassword();

      menu: (context) => Tabs(),
    };
  }
}
