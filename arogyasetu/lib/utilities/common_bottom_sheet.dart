import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommonBottomSheet extends StatefulWidget {

  @override
  _CommonBottomSheetState createState() => _CommonBottomSheetState();
}

class _CommonBottomSheetState extends State<CommonBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white70,
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            onPressed: (){},
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0),
              side: BorderSide(color: Color(0xFF4082FF),),),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.share,color: Color(0xFF4082FF),),
                  iconSize: 15.0,
                  onPressed: () {},
                ),
                Text('Share app', style: TextStyle(color: Color(0xFF4082FF),),),
              ],
            ),
          ),
          RaisedButton(
            onPressed: (){},
            color: Color(0xFF4082FF),
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0),
            ),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.stethoscope,color: Colors.white,),
                  iconSize: 15.0,
                  onPressed: () {},
                ),
                Text('Assess Again', style: TextStyle(color: Colors.white),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
