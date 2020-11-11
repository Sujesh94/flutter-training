import 'package:flutter/material.dart';

class ListImageButton extends StatelessWidget {
  ListImageButton({@required this.imageName});
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child:  Image.asset(imageName),
      onPressed: (){},
    );
  }
}
