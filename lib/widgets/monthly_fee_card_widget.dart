
import 'package:flutter/material.dart';

class MonthlyFeeCard extends StatelessWidget {
  final String heading;
  final String date;
  final String amount;
  final Color backgroundColor;
  final Color iconColor;
  final Color textColor;

  const MonthlyFeeCard({super.key, 
    required this.heading,
    required this.date,
    required this.amount,
    required this.backgroundColor,
    required this.iconColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: 336,
      height: 95,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(2),
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
                Icons.attach_money,
                size: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(width: size.width * 0.04),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(width: size.width * 0.08),
            Text(
              amount,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.08),
            const Icon(Icons.more_vert, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
