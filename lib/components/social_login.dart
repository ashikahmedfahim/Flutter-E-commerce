import 'package:flutter/material.dart';
import 'package:lacuna/constants.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                HorizontalLine(),
                Text(
                  'Or Sign In with',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 9, vertical: 18.0),
                child: Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage('assets/images/google.png'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 9, vertical: 18.0),
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

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Divider(
              color: kGreyText,
              thickness: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}
