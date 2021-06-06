import 'package:flutter/material.dart';
import '../components/welcome_background.dart';
import '../constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return WelcomeBackground(welcomeView: signInView(context));
  }
}

Column signInView(BuildContext context) {
  return Column(
    children: [
      Text(
        'Sign In Your Account',
        style: TextStyle(
          color: Color(0xff222222),
          fontSize: 28.0,
          fontWeight: FontWeight.w900,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 64.0),
        child: Column(
          children: [
            Text(
              'Enter your Email address and password to',
              style: TextStyle(
                color: Color(0xff5b5b5b),
                fontSize: 16.0,
              ),
            ),
            Text(
              'to access your account',
              style: TextStyle(
                color: Color(0xff5b5b5b),
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
            onPressed: () => Navigator.pushNamed(context, 'home/'),
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
    ],
  );
}
