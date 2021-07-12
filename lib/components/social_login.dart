// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
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
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                const HorizontalLine(),
                Text(
                  socialLoginText,
                  style: const TextStyle(color: kGreyText, fontSize: 16.0),
                ),
                const HorizontalLine(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
