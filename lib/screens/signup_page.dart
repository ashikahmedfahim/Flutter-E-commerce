import 'package:flutter/material.dart';
import 'package:lacuna/components/social_login.dart';
import '../components/welcome_background.dart';
import 'package:lacuna/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisible = false;
  toggleVisibility(bool value) {
    setState(() {
      isVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WelcomeBackground(
      welcomeView: signUpView(context, isVisible, toggleVisibility),
    );
  }
}

Column signUpView(
    BuildContext context, bool isVisible, Function toggleVisibility) {
  return Column(
    children: [
      Text(
        'Create An Account',
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
              'To get more advantages create your account',
              style: TextStyle(
                color: Color(0xff5b5b5b),
                fontSize: 16.0,
              ),
            ),
            Text(
              'by filling in some information',
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
              hintText: 'Enter Your First Name',
              prefixIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
              )),
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
              hintText: 'Enter Your Last Name',
              prefixIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
              )),
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
              hintText: 'Enter Your Phone Number',
              prefixIcon: Icon(
                Icons.phone,
                color: kPrimaryColor,
              )),
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
              hintText: 'Enter Your Date Of Birth',
              prefixIcon: Icon(
                Icons.calendar_today,
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
        padding: EdgeInsets.only(top: 30.0),
        child: Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kPrimaryColor),
          ),
          child: TextButton(
            onPressed: () => Navigator.pushNamed(context, 'signupAdditional/'),
            child: Text(
              'Continue',
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
      SocialLogin(
        socialLoginText: 'Or Sign Up with',
      ),
    ],
  );
}
