import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musclebaba_design_round/icons/my_custom_icons_icons.dart';
import 'package:musclebaba_design_round/screens/sales_screen.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard(
      {Key? key,
      required this.screenSize,
      this.index,
      this.icon,
      this.heading,
      this.subtitle,
      this.longCard})
      : super(key: key);
  final Size screenSize;
  final index;
  final icon;
  final heading;
  final subtitle;
  final longCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: longCard ? 0.25 * screenSize.height : 0.2 * screenSize.height,
      width: 0.35 * screenSize.width,
      child: NeumorphicButton(
        style: NeumorphicStyle(
          shadowDarkColor: Color(0xffC5CAF0),
          depth: 10,
          shape: NeumorphicShape.concave,
          color: const Color(0xffE1E3F9),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SalesScreen()));
        },
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: longCard ? 0.055 * screenSize.height : 0.02 * screenSize.height,
              ),
              Icon(
                icon,
                size: 0.032 * screenSize.height,
                color: const Color(0xff4636AA),
              ),
              SizedBox(
                height: 0.01 * screenSize.height,
              ),
              Text(
                heading,
                style: TextStyle(
                    fontSize: 0.035 * screenSize.height,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff4636AA)),
              ),
              SizedBox(
                height: 0.01 * screenSize.height,
              ),
              Text(subtitle,
                  style:
                      TextStyle(fontSize: 0.02 * screenSize.height, color: const Color(0xff4636AA)))
            ],
          ),
        ),
      ),
    );
  }
}
