import 'package:flutter/material.dart';
import 'package:lacuna/screens/home_page.dart';
import 'package:lacuna/screens/root_page.dart';
import 'package:lacuna/screens/signup_additional_page.dart';
import 'package:lacuna/screens/welcome_page.dart';
import 'package:lacuna/screens/signin_page.dart';
import 'package:lacuna/screens/signup_page.dart';

Map<String, WidgetBuilder> lacunaRoutes = <String, WidgetBuilder>{
  '/': (context) => RootPage(),
  'welcome/': (context) => WelcomePage(),
  'home/': (context) => HomePage(),
  'signin/': (context) => SignInPage(),
  'signup/': (context) => SignUpPage(),
  'signupAdditional/': (context) => SignUpAdditionalInformationPage(),
};
