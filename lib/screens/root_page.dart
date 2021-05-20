import 'package:flutter/material.dart';
import 'package:lacuna/services/shared_preferences.dart';

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
                      ? Navigator.pushReplacementNamed(context, "home/")
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
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                "assets/images/pexels-nataliya-vaitkevich-6214478.jpg"),
          ),
        ),
      ),
    );
  }
}
