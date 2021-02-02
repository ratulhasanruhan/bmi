import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class firstCard extends StatelessWidget {

  final IconData ficon;
  final String gtext;

  firstCard({this.ficon, this.gtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ficon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(gtext,
            style: labelTextStyle,),
      ],
    );
  }
}
