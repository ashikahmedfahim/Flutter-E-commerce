// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectPage();
  }

  Future<void> redirectPage() async => Future.delayed(
      const Duration(seconds: 2),
      () => {Navigator.pushReplacementNamed(context, "home/")});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/images/rootBackgroundImage.svg',
              semanticsLabel: 'Root Background Image',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: SizedBox(
              height: 76.0,
              width: 152.0,
              child: SvgPicture.asset(
                'assets/images/Logo.svg',
                semanticsLabel: 'Lacuna',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
