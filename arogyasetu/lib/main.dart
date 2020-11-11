import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arogyasetu/screen/home_page.dart';
import 'package:arogyasetu/screen/splash_screen.dart';
import 'package:arogyasetu/screen/registration.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),
        CommonScreen.id:(context)=>CommonScreen(),
        Registration.id:(context)=>Registration(),
      },
    );
  }
}



