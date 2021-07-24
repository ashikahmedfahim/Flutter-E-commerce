// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/mock_data/data.dart';
import 'package:lacuna/screens/cart_page.dart';
import 'package:lacuna/screens/checkout_page.dart';
import 'package:lacuna/screens/home_page.dart';
import 'package:lacuna/screens/order_history_page.dart';
import 'package:lacuna/screens/product_details_page.dart';
import 'package:lacuna/screens/profile_page.dart';
import 'package:lacuna/screens/search_page.dart';
import 'package:lacuna/screens/setting_page.dart';
import 'package:lacuna/screens/signin_page.dart';
import 'package:lacuna/screens/signup_additional_page.dart';
import 'package:lacuna/screens/signup_page.dart';
import 'package:lacuna/screens/splash_screen.dart';
import 'package:lacuna/services/auth_check.dart';

Route<dynamic> lacunaGeneratedRoutes(RouteSettings settings) {
  final lacunaRoutes = <String, WidgetBuilder>{
    '/': (context) => const SplashScreen(),
    'authCheck/': (context) => const AuthCheck(),
    'home/': (context) => const HomePage(),
    'signin/': (context) => const SignInPage(),
    'signup/': (context) => const SignUpPage(),
    'signupAdditional/': (context) => const SignUpAdditionalInformationPage(),
    'productDetails/': (context) => ProductDetailsPage(
          product: settings.arguments! as Product,
        ),
    'cart/': (context) => const CartPage(),
    'checkout/': (context) => const CheckOutPage(),
    'profile/': (context) => const ProfilePage(),
    'setting/': (context) => const SettingPage(),
    'orderHistory/': (context) => const OrderHistoryPage(),
    'search/': (context) => SearchPage(
          searchTerm: settings.arguments! as String,
        ),
  };
  final builder = lacunaRoutes[settings.name];
  return MaterialPageRoute(builder: (ctx) => builder!(ctx));
}
