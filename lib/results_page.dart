import 'package:bmi_calculator/components/infinite_button.dart';
import 'package:bmi_calculator/components/my_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
    
    class ResultsPage extends StatelessWidget {

      ResultsPage({@required this.bmiResult, @required this.interpretation, @required this.resultText});

      final String bmiResult, resultText, interpretation;

      getRange(String classText){
        if(classText == "Underweight")
          return "UNDERWEIGHT BMI RANGE:\nUnder 18.5 kg/m2";
        else if(classText == "Normal")
          return "Normal BMI RANGE:\n18,5 - 25 kg/m2";
        else if(classText == "Overweight")
          return "OVERWEIGHT BMI RANGE:\n25 - 30 kg/m2";
        else if(classText == "Obese")
          return "Obese BMI RANGE:\nOver 30 kg/m2";
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                child: Center(child: Text('Your result', style: kLargeButtonTextStyle.copyWith(fontSize: 30),)),
              )),
              Expanded(
                flex: 5,
                child:
                MyCard(
                  width: double.infinity,
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SelectableText(resultText,style: TextStyle(color: Colors.green, fontSize: 20),),
                      SelectableText(bmiResult, style: kLargeNumberTextStyle.copyWith(fontSize: 70),),
                      SelectableText(getRange(resultText), textAlign: TextAlign.center, style: kLabelTextStyle.copyWith(color: Colors.white60),),
                      SelectableText(interpretation,textAlign: TextAlign.center, style: kLabelTextStyle.copyWith(color: Colors.grey[200]),)
                    ],
                  ),
                ),),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: InfiniteButton(
                  text: "RE-CALCULATE",
                ),
              )
            ],
          ),
        );
      }
    }
    