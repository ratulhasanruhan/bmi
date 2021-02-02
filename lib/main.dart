import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF090C1F),

        //Custom Slider for Full App
        sliderTheme:SliderTheme.of(context).copyWith(
          inactiveTrackColor: Color(0xFF8D8E98),
          activeTrackColor: Colors.white,
          thumbColor: Color(0xFFEB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15,),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 28),
          overlayColor: Color(0x29EB1555),
        ),

      ),

      home: InputPage(),
    );
  }
}

