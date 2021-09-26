import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musclebaba_design_round/icons/my_custom_icons_icons.dart';
import 'package:musclebaba_design_round/widgets/chart_header.dart';
import 'package:musclebaba_design_round/widgets/revenue_list_tile.dart';
import 'package:musclebaba_design_round/widgets/top_bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> title = ["Sales", "Customers", "Products", "Revenue"];
    List<String> suffix = ["230k", "8.549k", "1.423k", "\$9745"];
    List<IconData> icon = [
      MyCustomIcons.icons8_discount_96,
      MyCustomIcons.icons8_male_user_96,
      MyCustomIcons.icons8_cardboard_box_96,
      MyCustomIcons.icons8_male_user_96
    ];

    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.025 * screenSize.height,
          ),
          TopBar(
            screenSize: screenSize,
          ),
          SizedBox(
            height: 0.05 * screenSize.height,
          ),
          Container(
            height: 0.35 * screenSize.height,
            width: screenSize.longestSide,
            margin: EdgeInsets.only(
              left: 0.08 * screenSize.width,
              right: 0.08 * screenSize.width,
            ),
            child: NeumorphicButton(
              onPressed: () {},
              style: NeumorphicStyle(
                shadowDarkColor: const Color(0xffC5CAF0),
                depth: 10,
                shape: NeumorphicShape.concave,
                color: const Color(0xffE1E3F9),
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
              ),
              child: Container(
                margin: EdgeInsets.only(
                  left: 0.025 * screenSize.width,
                  right: 0.025 * screenSize.width,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.015 * screenSize.height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChartHeader(
                          screenSize: screenSize,
                          headerColor: const Color(0xff4636AA),
                          subtitle: "Global Avg.",
                          headerText: "\$ 4,732.97",
                        ),
                        ChartHeader(
                          screenSize: screenSize,
                          headerColor: Colors.green,
                          subtitle: "Market Cap",
                          headerText: "\$ 80.3M",
                        ),
                        ChartHeader(
                          screenSize: screenSize,
                          headerColor: Colors.red,
                          subtitle: "Volume",
                          headerText: "\$ 1.73M",
                        ),
                      ],
                    ),
                    Container(
                      height: 0.2 * screenSize.height,
                      child: SfCartesianChart(
                          isTransposed: false,
                          palette: const [
                            Color(0xff4636AA),
                          ],
                          backgroundColor: const Color(0xffDDE2F8),
                          plotAreaBorderColor: const Color(0xffDDE2F8),
                          primaryXAxis: CategoryAxis(
                            isVisible: false,
                          ),
                          primaryYAxis: CategoryAxis(
                            isVisible: false,
                          ),
                          enableAxisAnimation: true,
                          series: <LineSeries<SalesData, String>>[
                            LineSeries<SalesData, String>(
                                // Bind data source
                                dataSource: <SalesData>[
                                  SalesData('Jan', 45),
                                  SalesData('Feb', 50),
                                  SalesData('Mar', 34),
                                  SalesData('Apr', 40),
                                  SalesData('May', 20),
                                  SalesData('Jun', 15),
                                  SalesData('Jul', 35),
                                ],
                                xValueMapper: (SalesData sales, _) => sales.year,
                                yValueMapper: (SalesData sales, _) => sales.sales)
                          ]),
                    ),
                    Container(
                      width: 0.85 * screenSize.width,
                      height: 0.05 * screenSize.height,
                      child: Container(
                        width: 0.8 * screenSize.width,
                        child: TabBar(
                          unselectedLabelStyle: TextStyle(
                              fontSize: 0.013 * screenSize.height,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                          labelStyle: TextStyle(
                            fontSize: 0.014 * screenSize.height,
                            fontWeight: FontWeight.w400,
                          ),
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                              color: const Color(0xff4636AA)),
                          controller: tabController,
                          unselectedLabelColor: Colors.black,
                          tabs: const [
                            Tab(text: "1D"),
                            Tab(text: "1W"),
                            Tab(text: "1M"),
                            Tab(text: "3M"),
                            Tab(text: "6M"),
                            Tab(text: "9M"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0.04 * screenSize.height,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 0.08 * screenSize.width,
              right: 0.08 * screenSize.width,
            ),
            child: Text(
              "Sales Revenue",
              style: TextStyle(
                  fontSize: 0.028 * screenSize.height,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff4636AA)),
            ),
          ),
          SizedBox(height: 0.018 * screenSize.height,),
          Expanded(
            child: ListView.builder(
                itemCount: 4, itemBuilder: (context, i) =>
                Column(
                  children: [
                    i == 0?
                        SizedBox(height: 0.01 * screenSize.height,) : Container(),
                    RevenueListTile(
                        screenSize: screenSize,
                      tileHeading: title[i],
                      tileIcon: icon[i],
                      tileSuffix: suffix[i],
                    ),
                    SizedBox(height: 0.03 * screenSize.height,)
                  ],
                )),
          )
        ],
      ),
    ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
