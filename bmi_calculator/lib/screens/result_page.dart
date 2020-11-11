import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({this.bmiResult,this.interpretationText,this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretationText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 25,left: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultTextStyle,
                  ),
                  Text('Normal BMI range is 18.5 – 24.9',style: kLabelTextStyle,),
                  Text(
                    interpretationText,
                    style: kResultExplanationText,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonName: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
