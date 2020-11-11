import 'package:flutter/material.dart';


class Registration extends StatefulWidget {
  static final String id='Registration';
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(
                  errorText: 'Enter valid Mobile number',
                  hintText: "Enabled decoration text ...",
                  labelText: 'Enter ',
                 // border: InputB
                ),),
          ],
        ),
      ),
    );
  }
}
