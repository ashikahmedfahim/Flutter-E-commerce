// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:lacuna/components/welcome_background.dart';
import 'package:lacuna/constants.dart';

class SignUpAdditionalInformationPage extends StatefulWidget {
  const SignUpAdditionalInformationPage({Key? key}) : super(key: key);

  @override
  _SignUpAdditionalInformationPageState createState() =>
      _SignUpAdditionalInformationPageState();
}

class _SignUpAdditionalInformationPageState
    extends State<SignUpAdditionalInformationPage> {
  @override
  Widget build(BuildContext context) {
    return WelcomeBackground(welcomeView: signUpAdditionalView(context));
  }
}

Column signUpAdditionalView(BuildContext context) {
  return Column(
    children: [
      const Text(
        'Additional Information',
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
              hintText: 'Enter Your Country Name',
              prefixIcon: const Icon(
                Icons.flag,
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
              hintText: 'Enter Your Country Code',
              prefixIcon: const Icon(
                Icons.location_on,
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
              hintText: 'Enter Your State',
              prefixIcon: const Icon(
                Icons.pin_drop_rounded,
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
              hintText: 'Enter Your City',
              prefixIcon: const Icon(
                Icons.apartment,
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
              hintText: 'Enter Your Postal Code ',
              prefixIcon: const Icon(
                Icons.all_inbox,
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
              hintText: 'Enter Your Street',
              prefixIcon: const Icon(
                Icons.navigation,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
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
            style: const ButtonStyle(),
            child: const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: kDarkTextColor,
              ),
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Already have an account?',
            style: TextStyle(color: kGreyText, fontSize: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, 'signin/'),
              child: const Text(
                'Sign In',
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
    ],
  );
}
