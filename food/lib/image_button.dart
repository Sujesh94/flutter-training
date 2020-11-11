import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  ImageButton({@required this.imageNumber, @required this.imageName});
  final int imageNumber;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Stack(
        children: [
          Image.asset(
            'images/$imageNumber.jpeg',
          ),
          Center(
            child: Text(
              imageName,
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
