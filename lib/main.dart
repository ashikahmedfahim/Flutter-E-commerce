import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lacuna/routes/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lacuna',
      initialRoute: '/',
      routes: lacunaRoutes,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
