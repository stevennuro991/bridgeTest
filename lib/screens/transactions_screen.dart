import 'package:bridge/constants/colors.dart';
import 'package:bridge/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TransactionsSceen extends StatefulWidget {
  const TransactionsSceen({super.key});

  @override
  State<TransactionsSceen> createState() => _TransactionsSceenState();
}

class _TransactionsSceenState extends State<TransactionsSceen> {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset("assets/images/filter.png"),
          )
        ],
        backgroundColor: primaryColor.colors.first,
        title: Text(
          'Company Transactions',
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
                bottom: size.height * 0.75,
                left: 0,
                right: 0,
                child: Container(
                  color: primaryColor.colors.first,
                ),
              ),

              Positioned(
                top: 10,
                left: 20,
                right: 20,
                child: Container(
                  width: 336,
                  height: 250,
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
                        horizontal: 19.0, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Transaction Details"),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: transactionsIconBackground,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(
                                  8.0), // Adjust padding as desired
                              child: const Icon(
                                Icons.warning,
                                size: 24,
                                color:
                                    Colors.white, // Set the desired icon color
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.06,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Monthly Limit",
                                  style: dashboardCardHeadingFont,
                                ),
                                Text(
                                  "Your monthly budget limit",
                                  style: dashboardContextFont,
                                )
                              ],
                            )
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.04,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: LinearPercentIndicator(
                            width: size.width * 0.78,
                            lineHeight: 40.0,
                            percent: 0.5,
                            center: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$15,000",
                                    style: dashboardDeepContextFont,
                                  ),
                                  Text(
                                    "\$20,000",
                                    style: dashboardContextFont,
                                  ),
                                ],
                              ),
                            ),
                            backgroundColor: progressBackgroundBarColor,
                            progressColor: progressBarColor,
                            barRadius: const Radius.circular(10.0),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Center(
                            child: Text(
                          "DETAILS",
                          style: dashboardContextFont,
                        ))
                        // Add your desired widgets here
                      ],
                    ),
                  ),
                ),
              ),
              // Add some spacing between the row and the new container

              Positioned(
                top: 310,
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
                            horizontal: 20.0, vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: revenueIconBackground,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(
                                  8.0), // Adjust padding as desired
                              child: const Icon(
                                Icons.attach_money,
                                size: 24,
                                color:
                                    Colors.white, // Set the desired icon color
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Monthly Fee",
                                  style: dashboardCardHeadingFont,
                                ),
                                Text(
                                  "15 / 12 / 2018",
                                  style: dashboardContextFont,
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.08,
                            ),
                            const Text("\$550"),
                            SizedBox(
                              width: size.width * 0.08,
                            ),
                            const Icon(
                              Icons.more_vert,
                            )
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
                            horizontal: 20.0, vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: desktopIconColor,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(
                                  8.0), // Adjust padding as desired
                              child: const Icon(
                                Icons.desktop_mac_outlined,
                                size: 24,
                                color:
                                    Colors.white, // Set the desired icon color
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Office Asset",
                                  style: dashboardCardHeadingFont,
                                ),
                                Text(
                                  "13 / 12 / 2018",
                                  style: dashboardContextFont,
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.08,
                            ),
                            Text(
                              "\$780",
                              style: dashboardContextFont,
                            ),
                            SizedBox(
                              width: size.width * 0.10,
                            ),
                            const Icon(
                              Icons.more_vert,
                            )
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
                            horizontal: 20.0, vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: transactionsIconBackground,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(
                                  8.0), // Adjust padding as desired
                              child: const Icon(
                                Icons.person,
                                size: 24,
                                color:
                                    Colors.white, // Set the desired icon color
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Employee Salary",
                                  style: dashboardCardHeadingFont,
                                ),
                                Text(
                                  "10 / 12 / 2018",
                                  style: dashboardContextFont,
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.08,
                            ),
                            Text(
                              "\$550",
                              style: dashboardContextFont,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            const Icon(
                              Icons.more_vert,
                            )
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
