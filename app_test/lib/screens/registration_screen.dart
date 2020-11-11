import 'package:app_test/screens/home_screen.dart';
import 'package:app_test/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class RegistrationScreen extends StatefulWidget {
  static const String id='registraion';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth=FirebaseAuth.instance;
  final _fireStore=FirebaseFirestore.instance;
  String name;
  String number;
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
                    height: 200.0,
                    child: Image.asset('images/1220.png'),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                    name=value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your name',
                      prefixIcon: Icon(Icons.person),),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                    number=value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your number',
                      prefixIcon: Icon(Icons.phone_android)),
                ),
          SizedBox(
            height: 8.0,
          ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                    mail=value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.mail)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                    //Do something with the user input.
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
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () async{
                        setState(() {
                          showSpinner=true;
                        });
                        try{
                        final newUser=await _auth.createUserWithEmailAndPassword(email: mail, password: password);
                       if(newUser!=null){
                         _fireStore.collection('users').add({
                           'mail':mail,
                           'number':number,
                           'name':name,
                         });
                         Navigator.pushNamed(context, HomePage.id);
                       }
                        setState(() {
                          showSpinner=false;
                        });}catch(exception){
                          print(exception);
                        }
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pushNamed(context, LoginScreen.id);
                    });
                  },
                  child: Center(
                    child: Text('Already have account? Log in!',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
