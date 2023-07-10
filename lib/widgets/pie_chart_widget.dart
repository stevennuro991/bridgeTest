import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BusinessCardWidget extends StatelessWidget {
  final double percent;
  final String title;
  final String subtitle;
  final Color chartColor;
  final Color chartBorderColor;

  const BusinessCardWidget({
    Key? key,
    required this.percent,
    required this.title,
    required this.subtitle,
    required this.chartColor,
    required this.chartBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
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
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: CircularPercentIndicator(
              radius: 40.0,
              lineWidth: 15.0,
              percent: percent,
              center: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: chartBorderColor, width: 1.0),
                ),
                child: Center(
                  child: Text(
                    '${(percent * 100).toInt()}',
                    style: const TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              progressColor: chartColor,
              reverse: true,
              backgroundColor: Colors.white,
            ),
          ),
          Text(title),
          const SizedBox(height: 30),
          Text(subtitle),
        ],
      ),
    );
  }
}
