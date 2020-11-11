import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/reusable_card.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'images/key.png',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 150,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Designed by\nIndian Engineers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          FlatButton(
                            child: Image.asset(
                              'images/read_more1.png',
                              width: 50,
                              height: 50,
                            ),
                            onPressed: (){},
                          ),
                        ],
                      ),
                      Image.asset('images/banner.png'),
                    ],
                  )),
              Container(
                color: Color(0xFF9FBEF2),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Key Features',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlatButton(
                                child: ReusableCard(
                              imageData: 'images/technical_security.png',
                              textData: 'Some text here',
                            ), onPressed: (){},),
                            SizedBox(
                              width: 5,
                            ),
                            FlatButton(
                             padding:EdgeInsets.all(5),
                              child: ReusableCard(
                                imageData: 'images/data_security.png',
                                textData: 'Some text here',
                              ), onPressed: (){},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FlatButton(
                              child: ReusableCard(
                                imageData: 'images/identity_theft.png',
                                textData: 'Some text here',
                              ),
                              onPressed: (){},
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                color: Colors.teal.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Secure Your IT Life',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                        FlatButton(child: Image.asset('images/read_more1.png',height: 50,width: 50,),
                          onPressed: (){},),
                      ],
                    ),
                    Image.asset('images/secureyourit.png',width: 150,height: 150,),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.new_releases,color: Colors.white,),
          onPressed: (){

          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlueAccent,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.contact_mail),
                onPressed: () {

                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {

                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.location_on),
                onPressed: () {

                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(
                  Icons.contact_phone,
                ),
                onPressed: () {
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}

