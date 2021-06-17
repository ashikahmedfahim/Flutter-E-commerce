import 'package:flutter/material.dart';
import 'package:lacuna/components/horizontal_line.dart';
import 'package:lacuna/constants.dart';

class SocialLogin extends StatelessWidget {
  final String socialLoginText;
  const SocialLogin({
    Key? key,
    required this.socialLoginText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                HorizontalLine(),
                Text(
                  socialLoginText,
                  style: TextStyle(color: kGreyText, fontSize: 16.0),
                ),
                HorizontalLine(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 18.0),
                child: Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage('assets/images/google.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 18.0),
                child: Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage('assets/images/facebook.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
