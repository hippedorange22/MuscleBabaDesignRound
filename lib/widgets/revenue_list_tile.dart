import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musclebaba_design_round/icons/my_custom_icons_icons.dart';

class RevenueListTile extends StatelessWidget {
  const RevenueListTile(
      {Key? key, required this.screenSize, this.tileIcon, this.tileHeading, this.tileSuffix})
      : super(key: key);
  final Size screenSize;
  final tileIcon;
  final tileHeading;
  final tileSuffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 0.08 * screenSize.width,

      ),
      child: Row(
        children: [
          Container(
            height: 0.08 * screenSize.height,
            child: NeumorphicButton(
              onPressed: () {},
              child: Icon(
                tileIcon,
                color: const Color(0xff4636AA),
                size: 0.035 * screenSize.height,
              ),
              style: const NeumorphicStyle(
                shadowDarkColor: Color(0xffC5CAF0),
                shadowLightColor: Colors.white,
                depth: 10,
                shape: NeumorphicShape.concave,
                color: Color(0xffE1E3F9),
                boxShape: NeumorphicBoxShape.circle(),
              ),
            ),
          ),
          SizedBox(
            width: 0.05 * screenSize.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tileHeading,
                style: TextStyle(
                    fontSize: 0.02 * screenSize.height,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff4636AA)),
              ),
              Text(
                "Since last week",
                style: TextStyle(
                    fontSize: 0.016 * screenSize.height, color: Color(0xff4636AA).withOpacity(0.5)),
              )
            ],
          ),
          SizedBox(
            width: 0.22 * screenSize.width,
          ),
          Text(
            tileSuffix,
            style: TextStyle(
                fontSize: 0.03 * screenSize.height,
                fontWeight: FontWeight.bold,
                color: const Color(0xff4636AA)),
          ),
        ],
      ),
    );
  }
}
