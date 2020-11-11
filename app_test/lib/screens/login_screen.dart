import 'package:app_test/screens/home_screen.dart';
import 'package:app_test/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth=FirebaseAuth.instance;
  String mail;
  String password;
  bool showSpinner=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200,
                    child: Image.asset('images/1220.png'),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  onChanged: (value) {
                   mail=value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.phone_android)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                 password=value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.vpn_key)),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () async{
                        setState(() {
                          showSpinner=true;
                        });
                        try{
                          final loggedUser=await _auth.signInWithEmailAndPassword(email: mail, password: password);
                          if(loggedUser!=null){
                            Navigator.pushNamed(context, HomePage.id);
                          }setState(() {
                            showSpinner=false;
                          });
                     }catch(exception){
                          print(exception);
                        }
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Log In',
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  child: Center(
                    child: Text(
                      'Forgot password!',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                   setState(() {
                     Navigator.pushNamed(context, RegistrationScreen.id);
                   });
                  },
                  child: Center(
                    child: Text(
                      'New User? Sign Up!',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
