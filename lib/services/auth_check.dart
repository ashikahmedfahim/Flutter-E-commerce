// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
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

  void redirectPage() {
    MySharedPreferences.instance.getStringValue("auth_token").then(
          (value) => {
            if (value.isEmpty)
              Navigator.pushReplacementNamed(context, "signin/")
            else
              Navigator.pushReplacementNamed(context, "checkout/")
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
