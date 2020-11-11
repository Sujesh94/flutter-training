import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: SafeArea(
          child: Row(
           //verticalDirection: VerticalDirection.up,
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                color: Colors.red,
                child: Center(child: Text('container 1')),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                width: 100,
                color: Colors.blue,
              ),
              // Container(
              //   width: 100,
              //   height: 100,
              //   color: Colors.blueGrey,
              //   child: Center(child: Text('container 2')),
              // ),
              // Container(
              //   width: 100,
              //   height: 100,
              //   color: Colors.black45,
              //   child: Center(child: Text('container 2')),
              // ),
 // SizedBox(height:333),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: 130,
              //       height: 25,
              //       color: Colors.yellow,
              //     ),
              //     Container(
              //       width: 130,
              //       height: 25,
              //       color: Colors.blue,
              //     ),
              //     Container(
              //       width: 130,
              //       height: 25,
              //       color: Colors.greenAccent,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
