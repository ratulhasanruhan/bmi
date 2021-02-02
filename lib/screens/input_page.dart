import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/string_bd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/first_row_card_customwidget.dart';
import 'package:bmi_calculator/components/main_card_customwidget.dart';
import '../constants.dart';
import '../components/round_icon_button.dart';
import 'result_page.dart';
import '../components/bottom_button.dart';
import 'file:///D:/Flutter/%23LEARNING/bmi-calculator-flutter/lib/components/calculator_brain.dart';
import 'package:bmi_calculator/string_bd.dart';

//enums
enum genderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardcolor;
  Color femaleCardColor = inactiveCardcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(appName),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        updateColour(gender: genderType.male);
                      });
                    },
                    colour: maleCardColor,
                    cardChild: firstCard(
                      ficon: FontAwesomeIcons.male,
                      gtext: male,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        updateColour(gender: genderType.female);
                      });
                    },
                    colour: femaleCardColor,
                    cardChild: firstCard(
                      ficon: FontAwesomeIcons.female,
                      gtext: female,
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: activeCardcolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      sheight,
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          height.toStringAsFixed(2),
                          style: pointTextStyle,
                        ),
                        Text(ft),
                      ],
                    ),
                    //Custom slider edit On main.dart SliderTheme:data
                    Slider(
                      value: height,
                      min: 3,
                      max: 8,
                      onChanged: (double sliderCvalue) {
                        setState(() {
                          height = sliderCvalue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      colour: activeCardcolor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(sweight,
                          style: labelTextStyle,),
                          Text(weight.toString(),
                          style: pointTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                             RoundIconButton(
                               icon: FontAwesomeIcons.plus,
                               onPress:(){
                                 setState(() {
                                   weight ++;
                                 });
                               },
                             ),
                            ],
                          ),
                        ],
                      ),),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: activeCardcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(sage,
                          style: labelTextStyle,),
                        Text(age.toString(),
                          style: pointTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress:(){
                                setState(() {
                                  age ++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            BottomButton(
              name: calculate,
              onPress: (){

               CalculatorBrain calc = CalculatorBrain(
                  height: height,
                  weight: weight,
                );

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                      bmiResult: calc.calculateBMI(),
                      bmiStatus: calc.getStatus(),
                      instruction: calc.getInstructions(),
                    )));
              },
            ),
          ],
        ));
  }

  void updateColour({genderType gender}) {
/*    if(gender == genderType.male){

      if(maleCardColor == inactiveCardcolor){

        maleCardColor = activeCardcolor;
        femaleCardColor = inactiveCardcolor;
      }else{
        maleCardColor = inactiveCardcolor;
      }
      //female button pressed
    }else{
      if(femaleCardColor == inactiveCardcolor){

        femaleCardColor = activeCardcolor;
        maleCardColor = inactiveCardcolor;
      }else{
        femaleCardColor = inactiveCardcolor;
      }
    }*/

    //ternary operator
    gender == genderType.male
        ? maleCardColor = activeCardcolor
        : maleCardColor = inactiveCardcolor;

    gender == genderType.female
        ? femaleCardColor = activeCardcolor
        : femaleCardColor = inactiveCardcolor;
  }
}



