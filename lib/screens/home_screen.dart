import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musclebaba_design_round/icons/my_custom_icons_icons.dart';
import 'package:musclebaba_design_round/widgets/bottom_nav_bar.dart';
import 'package:musclebaba_design_round/widgets/home_screen_cards.dart';
import 'package:musclebaba_design_round/widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> indexes = [0, 1, 2, 3];
    List<String> heading = ["230k", "8.549k", "1.423k", "\$9745"];
    List<String> subtitle = ["Sales", "Customers", "Products", "Revenue"];
    List<bool> toggle = [false,true,true,false];
    List<IconData> icons = [
      MyCustomIcons.icons8_discount_96,
      MyCustomIcons.icons8_male_user_96,
      MyCustomIcons.icons8_cardboard_box_96,
      MyCustomIcons.icons8_pie_chart_96
    ];
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.025 * screenSize.height,
              ),
              TopBar(
                screenSize: screenSize,
              ),
              SizedBox(
                height: 0.1 * screenSize.height,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 0.05 * screenSize.width,
                  right: 0.05 * screenSize.width,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello David",
                          style: TextStyle(
                              fontSize: 0.05 * screenSize.height,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff4636AA)),
                        ),
                        Text(
                          "Welcome Back!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 0.02 * screenSize.height, color: const Color(0xff4636AA)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 0.25 * screenSize.width,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          MyCustomIcons.icons8_slider_96,
                          size: 0.03 * screenSize.height,
                          color: const Color(0xff4636AA).withOpacity(0.8),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 0.05 * screenSize.height,
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: 0.1 * screenSize.width,
                    right: 0.1 * screenSize.width,
                  ),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 0.08 * screenSize.width,
                    children: [
                      for (var i in indexes)
                        HomeScreenCard(
                          index: i,
                          screenSize: screenSize,
                          longCard: toggle[i],
                          heading: heading[i],
                          subtitle: subtitle[i],
                          icon: icons[i],
                        )
                    ],
                  )

                  )
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
