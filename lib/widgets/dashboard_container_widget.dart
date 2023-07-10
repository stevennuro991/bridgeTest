import 'package:bridge/constants/colors.dart';
import 'package:bridge/constants/fonts.dart';
import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isCompleted;
  final bool isCancelled;

  const SocialCard({super.key, 
    required this.imagePath,
    required this.title,
    required this.description,
    this.isCompleted = false, this.isCancelled =false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: ClipOval(
            child: Image.asset(
              imagePath,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: dashboardCardHeadingFont,
            ),
            Text(
              description,
              style: dashboardContextFont,
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: dashboardTitleColor, width: 1),
          ),
          child: isCompleted
              ? const Icon(Icons.check, color: dashboardTitleColor,size: 18,)
              : const Icon(Icons.close, color: dashboardTitleColor,size: 18,),
        ),

          Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: dashboardTitleColor, width: 1),
          ),
          child: isCancelled
              ? const Icon(Icons.close, color: dashboardTitleColor,size: 18,)
              : const Icon(Icons.check, color: dashboardTitleColor,size: 18,),
        ),
      ],
    );
  }
}
