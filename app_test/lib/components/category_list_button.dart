import 'package:flutter/material.dart';

class CategoryListImageButton extends StatelessWidget {
  CategoryListImageButton({@required this.imagePath,@required this.imageName});
  final String imagePath;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
        color: Colors.white,
        onPressed: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Text(imageName),
          ],
        ),
      ),
    );

  }
}
