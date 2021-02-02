import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/main_card_customwidget.dart';
import 'package:bmi_calculator/string_bd.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/main_card_customwidget.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/string_bd.dart';

class ResultPage extends StatelessWidget {

  final String bmiResult;
  final String bmiStatus;
  final String instruction;
  ResultPage({this.bmiResult, this.bmiStatus, this.instruction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sbmiResult),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                syourResult,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardcolor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(bmiStatus,
                  style: resultStatusText,),
                  Text(bmiResult,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Text(instruction,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    )),
                  ),
                ]),
            ),
          ),
          BottomButton(
            name: sRecalculate,
            onPress: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
