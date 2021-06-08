import 'package:flutter/material.dart';
import '../components/welcome_background.dart';
import '../constants.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return WelcomeBackground(welcomeView: welcomeView(context));
  }
}

Column welcomeView(BuildContext context) {
  return Column(
    children: [
      Text(
        'WELCOME TO',
        style: TextStyle(
          color: kSoftBlackColor,
          fontSize: 28.0,
          fontWeight: FontWeight.w900,
        ),
      ),
      Text(
        'LACUNA APPAREL',
        style: TextStyle(
          color: kSoftBlackColor,
          fontSize: 28.0,
          fontWeight: FontWeight.w900,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 64.0),
        child: Column(
          children: [
            Text(
              'Lacuna is the best platform for your online',
              style: TextStyle(
                color: kDarkAshColor,
                fontSize: 16.0,
              ),
            ),
            Text(
              'based shopping. New Experience!',
              style: TextStyle(
                color: kDarkAshColor,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0),
        child: Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kPrimaryColor),
          ),
          child: TextButton(
            onPressed: () => Navigator.pushNamed(context, 'signin/'),
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ),
            style: ButtonStyle(),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0),
        child: Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kPrimaryColor),
          ),
          child: TextButton(
            onPressed: () => Navigator.pushNamed(context, 'signup/'),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: kDarkTextColor,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
          ),
        ),
      ),
    ],
  );
}
