import 'dart:math';

import 'package:bmi_calculator/string_bd.dart';

class CalculatorBrain{
  final double height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight/pow(height/3.2808, 2); //100 for meter to cm
    return _bmi.toStringAsFixed(1);
  }

  String getStatus(){
    if (_bmi >= 25) {
      return sOverweight;
    }else if(_bmi > 18.5){
      return sNormal;
    }else{
      return sUnderweight;
    }
  }

  String getInstructions(){
    if(_bmi >= 25){
      return insOverweight;
    }else if(_bmi > 18.5){
      return insNormal;
    }else{
      return insUnderweight;
    }
  }

}