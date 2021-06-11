import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeBackground extends StatelessWidget {
  final Column welcomeView;
  WelcomeBackground({required this.welcomeView});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
                height: (screenSize.height / 3) * 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: welcomeView,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
