import 'package:flutter/material.dart';
import 'package:lacuna/services/shared_preferences.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  void initState() {
    super.initState();
    redirectPage();
  }

  redirectPage() {
    return MySharedPreferences.instance.getStringValue("auth_token").then(
          (value) => {
            (value.isEmpty || value.length == 0)
                ? Navigator.pushReplacementNamed(context, "signin/")
                //replace with login when api ready
                : Navigator.pushReplacementNamed(context, "checkout/")
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
