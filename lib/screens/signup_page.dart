// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/social_login.dart';
import 'package:lacuna/constants.dart';
import '../components/welcome_background.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isVisible = false;
  void toggleVisibility(bool value) {
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
      const Text(
        'Create An Account',
        style: TextStyle(
          color: Color(0xff222222),
          fontSize: 28.0,
          fontWeight: FontWeight.w900,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 32.0),
        child: Column(
          children: const [
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
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              fillColor: kDarkTextColor,
              hintStyle: const TextStyle(
                color: kGreyText,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                  color: kPrimaryColor,
                ),
              ),
              hintText: 'Enter Your First Name',
              prefixIcon: const Icon(
                Icons.person,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              fillColor: kDarkTextColor,
              hintStyle: const TextStyle(
                color: kGreyText,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                  color: kPrimaryColor,
                ),
              ),
              hintText: 'Enter Your Last Name',
              prefixIcon: const Icon(
                Icons.person,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              fillColor: kDarkTextColor,
              hintStyle: const TextStyle(
                color: kGreyText,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                  color: kPrimaryColor,
                ),
              ),
              hintText: 'Enter Your Email',
              prefixIcon: const Icon(
                Icons.email,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              fillColor: kDarkTextColor,
              hintStyle: const TextStyle(
                color: kGreyText,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                  color: kPrimaryColor,
                ),
              ),
              hintText: 'Enter Your Phone Number',
              prefixIcon: const Icon(
                Icons.phone,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              fillColor: kDarkTextColor,
              hintStyle: const TextStyle(
                color: kGreyText,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 0.8,
                  color: kPrimaryColor,
                ),
              ),
              hintText: 'Enter Your Date Of Birth',
              prefixIcon: const Icon(
                Icons.calendar_today,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          enableSuggestions: false,
          autocorrect: false,
          obscureText: !isVisible,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
            fillColor: kDarkTextColor,
            hintStyle: const TextStyle(
              color: kGreyText,
            ),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                width: 0.8,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                width: 0.8,
                color: kPrimaryColor,
              ),
            ),
            hintText: 'Enter Your Password',
            prefixIcon: const Icon(
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
        padding: const EdgeInsets.only(top: 30.0),
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
            style: const ButtonStyle(),
            child: const Text(
              'Continue',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: kDarkTextColor,
              ),
            ),
          ),
        ),
      ),
      const SocialLogin(
        socialLoginText: 'Or Sign Up with',
      ),
    ],
  );
}
