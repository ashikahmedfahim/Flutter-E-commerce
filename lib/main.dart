// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lacuna/database/database.dart';

// Project imports:
import 'package:lacuna/routes/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await $FloorLacunaDatabase.databaseBuilder('lacuna_database.db').build();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lacuna',
      onGenerateRoute: lacunaGeneratedRoutes,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
