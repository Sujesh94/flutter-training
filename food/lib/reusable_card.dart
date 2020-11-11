import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.icon,this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.red,
            size: 25,
          ),
          title: Text(text),
        ));
  }
}
