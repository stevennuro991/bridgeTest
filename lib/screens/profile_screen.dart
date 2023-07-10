import 'package:bridge/constants/colors.dart';
import 'package:bridge/constants/fonts.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_rounded,
            color: whiteColor,
          ),
          backgroundColor: primaryColor.colors.first,
          title: Text(
            'Profile',
            style: appBarFont,
          ),
        ));
       
  }
}
