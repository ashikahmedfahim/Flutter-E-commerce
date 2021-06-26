import 'package:flutter/material.dart';
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

  Future<void> redirectPage() async =>
      new Future.delayed(const Duration(seconds: 2), () => {
        Navigator.pushReplacementNamed(context, "home/")
      });
  @override
  Widget build(BuildContext context) {
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
            Center(
              child: Container(
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
      ),
    );
  }
}
