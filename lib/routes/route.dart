import 'package:flutter/material.dart';
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/screens/cart_page.dart';
import 'package:lacuna/screens/checkout_page.dart';
import 'package:lacuna/screens/home_page.dart';
import 'package:lacuna/screens/product_details_page.dart';
import 'package:lacuna/screens/profile_page.dart';
import 'package:lacuna/services/auth_check.dart';
import 'package:lacuna/screens/signup_additional_page.dart';
import 'package:lacuna/screens/signin_page.dart';
import 'package:lacuna/screens/signup_page.dart';
import 'package:lacuna/screens/splash_screen.dart';

Route<dynamic> lacunaGeneratedRoutes(RouteSettings settings) {
  var lacunaRoutes = <String, WidgetBuilder>{
    '/': (context) => SplashScreen(),
    'authCheck/': (context) => AuthCheck(),
    'home/': (context) => HomePage(),
    'signin/': (context) => SignInPage(),
    'signup/': (context) => SignUpPage(),
    'signupAdditional/': (context) => SignUpAdditionalInformationPage(),
    'productDetails/': (context) => ProductDetailsPage(
          product: settings.arguments as Product,
        ),
    'cart/': (context) => CartPage(),
    'checkout/': (context) => CheckOutPage(),
    'profile/': (context) => ProfilePage(),
  };
  var builder = lacunaRoutes[settings.name];
  return MaterialPageRoute(builder: (ctx) => builder!(ctx));
}
