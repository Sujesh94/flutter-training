import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Ball.dart';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade600,
        title: Center(
          child: Text('Decision Maker',style: TextStyle(fontWeight: FontWeight.bold),)
        ),
      ),
      body: SafeArea(child:Ball(),),
    );
  }
}
