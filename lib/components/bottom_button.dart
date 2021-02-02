import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  final Function onPress;
  final String name;

  BottomButton({this.onPress, this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(name,
            style: largeButtonText,
          ),
        ),
        margin: EdgeInsets.only(top: 10,),
        height: bottomButtonheight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEB1555),
        ),
      ),
    );
  }
}
