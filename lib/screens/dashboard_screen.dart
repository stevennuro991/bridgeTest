import 'package:bridge/constants/colors.dart';
import 'package:bridge/constants/fonts.dart';
import 'package:bridge/widgets/custom_bar_widget.dart';
import 'package:bridge/widgets/dashboard_container_widget.dart';
import 'package:bridge/widgets/pie_chart_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back_rounded,
        leadingIconColor: whiteColor,
        backgroundColor: primaryColor.colors.first,
        title: 'Competitions',
        titleStyle: appBarFont,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: MediaQuery.of(context).size.height * 0.70,
                left: 0,
                right: 0,
                child: Container(
                  color: primaryColor.colors.first,
                ),
              ),
              Positioned(
                top: 5,
                bottom: MediaQuery.of(context).size.height * 0.93,
                left: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0, 0.2093, 1],
                      colors: [
                        Color.fromRGBO(34, 55, 164, 0.15),
                        Color.fromRGBO(35, 56, 165, 0.15),
                        Color.fromRGBO(255, 255, 255, 0.15),
                      ],
                      tileMode: TileMode.clamp,
                      transform: GradientRotation(270 * 3.14159 / 180),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Compare with another competitor",
                          style: dashboardFont,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: whiteColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 20,
                right: 20,
                child: Align(
                  alignment: Alignment.topCenter, // Align the row to the center
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center align the containers
                    children: [
                      const BusinessCardWidget(
                        percent: 0.9,
                        title: 'Diding Pizza',
                        subtitle: 'My Business',
                        chartColor: chartColor,
                        chartBorderColor: Colors.black,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const BusinessCardWidget(
                        percent: 0.85,
                        title: 'Bohim Pizza',
                        subtitle: 'My Competitor',
                        chartColor: revenueIconBackground,
                        chartBorderColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 293,
                  left: 30,
                  right: 30,
                  child: Row(
                    children: [
                      Text(
                        "Socials Media",
                        style: dashboardTitleFont,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.20,
                      ),
                      Text(
                        "You",
                        style: dashboardSubtitleFont,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Text(
                        "Competitor",
                        style: dashboardSubtitleFont,
                      ),
                    ],
                  )),
              Positioned(
                top: 330,
                left: 30,
                right: 30,
                child: Container(
                    width: 336,
                    height: 295,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.08),
                          offset: Offset(0, 9),
                          blurRadius: 28,
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 20),
                      child: Column(
                        children: [
                          const SocialCard(
                            imagePath: "assets/images/social1.png",
                            title: "Website",
                            description: "Lorem ipsum do ...",
                            isCompleted: true,
                            isCancelled: true,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Divider(),
                          const SocialCard(
                            imagePath: "assets/images/facebook.png",
                            title: "Facebook",
                            description: "Lorem ipsum do ...",
                            isCompleted: true,
                            isCancelled: false,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Divider(),
                          const SocialCard(
                            imagePath: "assets/images/youtube.png",
                            title: "Youtube",
                            description: "Lorem ipsum do ...",
                            isCompleted: false,
                            isCancelled: true,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Divider(),
                          const SocialCard(
                            imagePath: "assets/images/instagram.png",
                            title: "Instagram",
                            description: "Lorem ipsum do ...",
                            isCompleted: true,
                            isCancelled: false,
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
