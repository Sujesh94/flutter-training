import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.imageData, this.textData});

  final String imageData;
  final String textData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              imageData,
              width: 30,
              height: 30,
            ),
            Text(textData),
          ],
        ),
      ),
    );
  }
}