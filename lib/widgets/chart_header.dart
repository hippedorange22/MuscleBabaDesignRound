import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartHeader extends StatelessWidget {
  const ChartHeader({Key? key, required this.screenSize, this.headerText, this.headerColor, this.subtitle}) : super(key: key);
  final Size screenSize;
  final headerText;
  final headerColor;
  final subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(headerText, style: TextStyle(
          color: headerColor,
          fontSize: 0.016 * screenSize.height,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 0.005 * screenSize.height,),
        Text(subtitle, style: TextStyle(
            fontSize: 0.014 * screenSize.height,
            fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
