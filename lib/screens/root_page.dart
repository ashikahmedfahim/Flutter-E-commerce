import 'package:flutter/material.dart';
import 'package:lacuna/services/shared_preferences.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  void initState() {
    super.initState();
    redirectPage();
  }

  Future<void> redirectPage() async => new Future.delayed(
        const Duration(seconds: 2),
        () => {
          MySharedPreferences.instance.getStringValue("auth_token").then(
                (value) => {
                  (value.isEmpty || value.length == 0)
                      ? Navigator.pushReplacementNamed(context, "welcome/")
                      //replace with login when api ready
                      : Navigator.pushReplacementNamed(context, "home/")
                },
              )
        },
      );

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
