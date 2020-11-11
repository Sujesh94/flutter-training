import 'package:flutter/material.dart';

class BuilderView extends StatefulWidget {
  @override
  _BuilderViewState createState() => _BuilderViewState();
}

class _BuilderViewState extends State<BuilderView> {
  List<String> name = ['sujesh', 'suju', 'njan'];
  String newItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: TextField(
            onChanged: (value){
              setState(() {
                newItem=value.toString();
              });
            },
          ),
        ),
        Row(
          children: [
            FlatButton(
              child:Text('add'),
              onPressed: (){
                setState(() {
                  name.add(newItem);
                });

              },
            ),
            FlatButton(
              child:Text('delete'),
              onPressed: (){
                setState(() {
                  name.remove(newItem);
                });

              },
            ),
          ],
        ),
    Flexible(
      child: Container(
        height: 800,
        child: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, int index) {
        return FlatButton(
          onLongPress: (){
            setState(() {
              name.removeAt(index);
            });
          },
          child: Text(
          name[index],
          ),
        );
        },
        ),
      ),
    ),
      ],
    );
  }
}
