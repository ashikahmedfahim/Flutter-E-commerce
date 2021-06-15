import 'package:flutter/material.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/screens/home_page.dart';
import 'package:lacuna/screens/product_details_page.dart';
import 'package:lacuna/screens/root_page.dart';
import 'package:lacuna/screens/signup_additional_page.dart';
import 'package:lacuna/screens/welcome_page.dart';
import 'package:lacuna/screens/signin_page.dart';
import 'package:lacuna/screens/signup_page.dart';

Route<dynamic> lacunaGeneratedRoutes(RouteSettings settings) {
  var lacunaRoutes = <String, WidgetBuilder>{
    '/': (context) => RootPage(),
    'welcome/': (context) => WelcomePage(),
    'home/': (context) => HomePage(),
    'signin/': (context) => SignInPage(),
    'signup/': (context) => SignUpPage(),
    'signupAdditional/': (context) => SignUpAdditionalInformationPage(),
    'productDetails/': (context) => ProductDetailsPage(
          product: settings.arguments as Product,
        ),
  };
  var builder = lacunaRoutes[settings.name];
  return MaterialPageRoute(builder: (ctx) => builder!(ctx));
}
