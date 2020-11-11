import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:arogyasetu/constant.dart';
class Contacts extends StatelessWidget {
  const Contacts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ReusableCard(questionText: kFaqQuestion1,answerText: kFaqAnswer1,),
        ReusableCard(questionText: kFaqQuestion2,answerText: kFaqAnswer2,),
        ReusableCard(questionText: kFaqQuestion3,answerText: kFaqAnswer3,),
        ReusableCard(questionText: kFaqQuestion4,answerText: kFaqAnswer4,),
        ReusableCard(questionText: kFaqQuestion5,answerText: kFaqAnswer5,),
        ReusableCard(questionText: kFaqQuestion6,answerText: kFaqAnswer6,),
        ReusableCard(questionText: kFaqQuestion7,answerText: kFaqAnswer7,),
        ReusableCard(questionText: kFaqQuestion8,answerText: kFaqAnswer8,),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
ReusableCard({@required this.questionText,@required this.answerText});

final String questionText;
final String answerText;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      color: Color(0xFF3895D3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      child: ExpandablePanel(
       header: Text(questionText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
       expanded: Text(answerText, softWrap: true,style: TextStyle(fontSize: 15,color: Colors.white), ),
       tapHeaderToExpand: true,
       hasIcon: true,
      ),
    );
  }
}