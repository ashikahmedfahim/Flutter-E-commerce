import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lacuna/constants.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Container(
                child: SvgPicture.asset(
                  'assets/images/rootBackgroundImage.svg',
                  semanticsLabel: 'Root Background Image',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: (screenSize.height / 6),
              left: screenSize.width / 3.3,
              child: Container(
                height: 76.0,
                width: 152.0,
                child: SvgPicture.asset(
                  'assets/images/Logo.svg',
                  semanticsLabel: 'Lacuna',
                ),
              ),
            ),
            Positioned(
              top: (screenSize.height / 3),
              width: screenSize.width,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 33.0),
                height: (screenSize.height / 3) * 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'WELCOME TO',
                      style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 28.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'LACUNA APPAREL',
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
                            'Lacuna is the best platform for your online',
                            style: TextStyle(
                              color: Color(0xff5b5b5b),
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'based shopping. New Experience!',
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
                          onPressed: () =>
                              Navigator.pushNamed(context, 'home/'),
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
                          onPressed: () {},
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
