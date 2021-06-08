import 'package:flutter/material.dart';
import 'package:lacuna/components/welcome_background.dart';
import 'package:lacuna/constants.dart';

class SignUpAdditionalInformation extends StatefulWidget {
  const SignUpAdditionalInformation({Key? key}) : super(key: key);

  @override
  _SignUpAdditionalInformationState createState() =>
      _SignUpAdditionalInformationState();
}

class _SignUpAdditionalInformationState
    extends State<SignUpAdditionalInformation> {
  @override
  Widget build(BuildContext context) {
    return WelcomeBackground(welcomeView: signUpAdditionalView(context));
  }
}

Column signUpAdditionalView(BuildContext context) {
  return Column(
    children: [
      Text(
        'Additional Information',
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
              hintText: 'Enter Your Country Name',
              prefixIcon: Icon(
                Icons.flag,
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
              hintText: 'Enter Your Country Code',
              prefixIcon: Icon(
                Icons.location_on,
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
              hintText: 'Enter Your State',
              prefixIcon: Icon(
                Icons.pin_drop_rounded,
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
              hintText: 'Enter Your City',
              prefixIcon: Icon(
                Icons.apartment,
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
              hintText: 'Enter Your Postal Code ',
              prefixIcon: Icon(
                Icons.all_inbox,
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
              hintText: 'Enter Your Street',
              prefixIcon: Icon(
                Icons.navigation,
                color: kPrimaryColor,
              )),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0),
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
              'Sign Up',
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
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: TextStyle(color: kGreyText, fontSize: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, 'signin/'),
              child: Text(
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
