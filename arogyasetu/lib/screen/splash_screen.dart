import 'dart:async';
import 'package:arogyasetu/screen/registration.dart';
import 'package:flutter/material.dart';
import 'package:arogyasetu/screen/home_page.dart';
class SplashScreen extends StatefulWidget {
  static const String id='splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
          () => Navigator.pushReplacementNamed(context,Registration.id),);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('images/logo.png',width: 150,height: 150,),
      ),
    );
  }
}
