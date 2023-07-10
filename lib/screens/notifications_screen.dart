import 'package:bridge/constants/colors.dart';
import 'package:bridge/constants/fonts.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: whiteColor,
        ),
        backgroundColor: primaryColor.colors.first,
        title: Text(
          'Notifications',
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
                bottom: MediaQuery.of(context).size.height * 0.55,
                left: 0,
                right: 0,
                child: Container(
                  color: primaryColor.colors.first,
                ),
              ),
              Positioned(
                  top: 35,
                  left: 30,
                  right: 30,
                  child: Column(
                    children: [
                      Container(
                        width: 336,
                        height: 153,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.08),
                              offset: Offset(0, 9),
                              blurRadius: 28,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: revenueIconBackground,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(8.0), 
                                    child:Image.asset("assets/images/analytics.png",color: whiteColor,)
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Nice Growth "),
                                      Text("Your business have a nice …")
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  const Text("7:30 am")
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * 0.70,
                                      child: const Text(
                                          "Lorem ipsum dolor sit amet con stect ure aqua lima belas lima …")),
                                  const Icon(Icons.arrow_forward_ios)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        width: 336,
                        height: 208,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.08),
                              offset: Offset(0, 9),
                              blurRadius: 28,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: emailIconColor,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(
                                        8.0), // Adjust padding as desired
                                    child: const Icon(
                                      Icons.mail,
                                      size: 24,
                                      color: Colors
                                          .white, // Set the desired icon color
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.04,
                                  ),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Email Notifications"),
                                      Text("All notifications will be …")
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.04,
                                  ),
                                  const Text("6:20 am")
                                ],
                              ),
                              const Divider(),
                               SizedBox(
                                height: MediaQuery.of(context).size.height * 0.00,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width * 0.70,
                                      child: const Text(
                                          "Lorem ipsum dolor sit amet con stect ure aqua lima belas lima …")),
                                  const Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.5),
                                      border: Border.all(
                                        color: const Color(0xFF979797),
                                        width: 1.0,
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Button onPressed logic here
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(140, 38),
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(2.5),
                                        ),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0.0,
                                      ),
                                      child: const Text(
                                        'No',
                                        style: TextStyle(fontSize: 16,color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 140,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.5),
                                      color: const Color(0xFF273BA5),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Button onPressed logic here
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(140, 38),
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(2.5),
                                        ),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                      ),
                                      child: const Text(
                                        'Yes',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        width: 336,
                        height: 180,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.08),
                              offset: Offset(0, 9),
                              blurRadius: 28,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 20),
                          child: Column(
                            children: [
                              // Add your content here
                                Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: transactionsIconBackground,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(
                                        8.0), // Adjust padding as desired
                                    child: Image.asset('assets/images/not.png')
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.04,
                                  ),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("New Competitors"),
                                      Text("You have some new com …")
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.01,
                                  ),
                                  const Text("7:30 am")
                                ],
                              ),
                              const Divider(),
        
                              Row(
                                children: [
                                  Image.asset('assets/images/not1.png'),
                                  Image.asset('assets/images/not2.png'),
                                  Image.asset('assets/images/not3.png'),
                                  Image.asset('assets/images/not4.png'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
