import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musclebaba_design_round/icons/my_custom_icons_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      MyCustomIcons.icons8_home_96,
      MyCustomIcons.icons8_wallet_96,
      MyCustomIcons.icons8_bar_chart_96,
      MyCustomIcons.icons8_user_96
    ];
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            height: 0.09 * screenSize.height,
            child: Container(
                margin: EdgeInsets.only(left: 0.08 * screenSize.width),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, i) => Row(
                          children: [
                            Container(
                              height: 0.065 * screenSize.height,
                              child: NeumorphicButton(
                                onPressed: () {},
                                style: const NeumorphicStyle(
                                  shadowDarkColor: Color(0xffC5CAF0),
                                  shadowLightColor: Colors.white,
                                  depth: 10,
                                  shape: NeumorphicShape.concave,
                                  color: Color(0xffE1E3F9),
                                  boxShape: NeumorphicBoxShape.circle(),
                                ),
                                child: Icon(icons[i], color: const Color(0xff4636AA),size: 0.03 * screenSize.height,),
                              ),
                            ),
                            SizedBox(
                              width: 0.08 * screenSize.width,
                            )
                          ],
                        )))),
        SizedBox(
          height: 0.015 * screenSize.height,
        )
      ],
    );
  }
}
