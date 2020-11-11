import 'package:flutter/material.dart';
import 'loading_page.dart';
class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int imageNumber=11;
  String getImageNumber(){
      return 'images/StartUpImage$imageNumber.jpg';
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(getImageNumber()),
                fit: BoxFit.cover)
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ButtonBar(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new RaisedButton(
                    color: Colors.lightBlueAccent,
                    child: new Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoadingPage(),));
                      });
                    },
                  ),
                ],
              ),
              FlatButton(
                child: Text('Skip',style: TextStyle(color: Colors.white),),
                onPressed: (){
                  setState(() {
                   if(imageNumber<13){
                     imageNumber++;
                     getImageNumber();
                   }else{
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoadingPage(),),);
                   }
                  });
                },
              ),
            ],
          ),
      ),
      ),);
  }
}
