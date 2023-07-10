import 'package:bridge/constants/colors.dart';
import 'package:bridge/constants/fonts.dart';
import 'package:bridge/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.more_horiz_rounded,
              color: whiteColor,
            ),
          )
        ],
        leading: Image.asset("assets/images/oval.png"),
        backgroundColor: primaryColor.colors.first,
        title: Text(
          'Income',
          style: appBarFont,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: size.height * 0.50,
                left: 0,
                right: 0,
                child: Container(
                  color: primaryColor.colors.first,
                ),
              ),
              Positioned(
                  top: 340,
                  left: 30,
                  right: 30,
                  child: Row(
                    children: [
                      Text(
                        "My Income",
                        style: incomeTitleFont,
                      ),
                      SizedBox(
                        width: size.width * 0.30,
                      ),
                    ],
                  )),
              Positioned(
                  top: 5,
                  left: 30,
                  right: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/oval1.png'),
                      Text(
                        "My Business",
                        style: dashboardFont,
                      ),
                      const Text("|"),
                      Image.asset('assets/images/oval2.png'),
                      Text(
                        "My Competitor",
                        style: dashboardFont,
                      )
                    ],
                  )),
              Positioned(
                  top: 60, left: 30, right: 30, child: SyncfusionBarChart()),
              Positioned(
                top: 370,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    Container(
                      width: 336,
                      height: 95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(2), // Set the border radius
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.03),
                            offset: Offset(0, 9),
                            blurRadius: 28,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 19.0, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "August Income",
                              style: dashboardCardHeadingFont,
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.grey[300]!, width: 2),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_upward,
                                    size: 25,
                                    color: iconArrowColor,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.04,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "82%",
                                      style: dashboardCardHeadingFont,
                                    ),
                                    Text(
                                      "Total Income \$120,000",
                                      style: dashboardContextFont,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: size.width * 0.16,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down_sharp,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 336,
                      height: 95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(2), // Set the border radius
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.03),
                            offset: Offset(0, 9),
                            blurRadius: 28,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 19.0, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("September Income"),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.grey[300]!, width: 2),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_upward,
                                    size: 25,
                                    color: iconArrowColor,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.04,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "25%",
                                      style: dashboardCardHeadingFont,
                                    ),
                                    Text(
                                      "Total Income \$120,000",
                                      style: dashboardContextFont,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: size.width * 0.16,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down_sharp,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
