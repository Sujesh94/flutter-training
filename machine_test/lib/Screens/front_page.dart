import 'package:flutter/material.dart';
import 'home_page.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFAFEEEE),
        appBar: AppBar(
          leading: Image.asset(
            'images/logo.png',
          ),
          backgroundColor: Color(0xFFF8F8FF),
        ),
        body: Center(
          child: Container(
            height: 300,
            child: Card(
              color: Color(0xFFEEEEEE),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.email,
                        color: Colors.red,
                      ),
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,),
                    ),
                    onChanged: (value) {
                      //TODO:For Demo purpose
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.red,
                      ),
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                    onChanged: (value) {
                      //TODO:For Demo purpose
                    },
                  ),
                  FlatButton(
                    child: Image.asset('images/login-button.png',width: 200,),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
