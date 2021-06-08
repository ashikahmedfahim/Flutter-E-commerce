import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/welcome_background.dart';
import '../components/social_login.dart';
import '../constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isRememberChecked = false;
  bool isVisible = false;
  toggleVisibility(bool value) {
    setState(() {
      isVisible = value;
    });
  }

  toggleCheck(bool value) {
    setState(() {
      isRememberChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WelcomeBackground(
        welcomeView: signInView(
      context,
      isRememberChecked,
      toggleCheck,
      isVisible,
      toggleVisibility,
    ));
  }
}

Column signInView(BuildContext context, bool isRememberChecked,
    Function toggleCheck, bool isVisible, Function toggleVisibility) {
  return Column(
    children: [
      Text(
        'Sign In To Your Account',
        style: TextStyle(
          color: Color(0xff222222),
          fontSize: 28.0,
          fontWeight: FontWeight.w900,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 32.0),
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
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              fillColor: kDarkTextColor,
              hintStyle: TextStyle(
                color: kGreyText,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  width: 0.8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  width: 0.8,
                  color: kPrimaryColor,
                ),
              ),
              hintText: 'Enter Your Email',
              prefixIcon: Icon(
                Icons.email,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          enableSuggestions: false,
          autocorrect: false,
          obscureText: isVisible ? false : true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
            fillColor: kDarkTextColor,
            hintStyle: TextStyle(
              color: kGreyText,
            ),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                width: 0.8,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                width: 0.8,
                color: kPrimaryColor,
              ),
            ),
            hintText: 'Enter Your Password',
            prefixIcon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                toggleVisibility(!isVisible);
              },
              icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: TextButton(
                    onPressed: () {
                      toggleCheck(!isRememberChecked);
                    },
                    child: Icon(
                      Icons.check_circle,
                      color: isRememberChecked ? kPrimaryColor : kGreyText,
                    ),
                  ),
                ),
                Text(
                  'Remember me',
                  style: TextStyle(color: kGreyText, fontSize: 16.0),
                ),
              ],
            ),
            Text(
              'Forgot Password?',
              style: TextStyle(color: kGreyText, fontSize: 16.0),
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
            color: kPrimaryColor,
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
                color: kDarkTextColor,
              ),
            ),
            style: ButtonStyle(),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: TextStyle(color: kGreyText, fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, 'signup/'),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SocialLogin(),
    ],
  );
}
