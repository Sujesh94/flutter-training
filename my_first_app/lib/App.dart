import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: "MyApp",
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Container(
            //margin: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
            //margin: EdgeInsets.all(20),
            // margin: EdgeInsets.fromLTRB(10, 10, 50, 100),
            margin: EdgeInsets.only(left: 20),
            height: 100,
            width: 100,
            padding: EdgeInsets.all(25),
            color: Colors.white,
            child: Text('Sujesh'),
          ),
        ),
      ),
    );
  }
}
