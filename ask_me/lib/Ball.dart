import 'dart:math';

import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(
            () {
              imageNumber = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset('images/ball$imageNumber.png'),
      ),
    );
  }
}
