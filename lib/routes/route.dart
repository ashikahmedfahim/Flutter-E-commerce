import 'package:flutter/material.dart';
import 'package:lacuna/screens/home_page.dart';
import 'package:lacuna/screens/login_page.dart';
import 'package:lacuna/screens/root_page.dart';
import 'package:lacuna/screens/welcome_page.dart';

Map<String, WidgetBuilder> lacunaRoutes = <String, WidgetBuilder>{
  '/': (context) => RootPage(),
  // '/': (context) => WelcomePage(),
  '/welcome': (context) => WelcomePage(),
  'login/': (context) => LoginPage(),
  'home/': (context) => HomePage(),
};
