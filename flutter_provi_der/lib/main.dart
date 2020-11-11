import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyText>(
      create: (context)=>MyText(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Title(),
          ),
          body: Level1(),
        ),
      ),
    );
  }
}
class Level1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Level2();
  }
}
class Level2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(),
        Level3(),
      ],
    );
  }
}
class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<MyText>(context).data);
  }
}
class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newValue){
        String value=newValue;
        Provider.of<MyText>(context).changeData(value);
      },
    );
  }
}
class MyText extends ChangeNotifier{
  String data='Hai Sujesh';
  void changeData(String newValue){
    print(newValue);
    this.data=newValue;
    notifyListeners();
  }
}
class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<MyText>(context).data);
  }
}
