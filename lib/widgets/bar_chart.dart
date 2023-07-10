import 'package:bridge/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncfusionBarChart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    final NumberFormat currencyFormat =
        NumberFormat.compactCurrency(symbol: '\$', decimalDigits: 0);

    return  SizedBox(
        height: size.height*0.30,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(
          isInversed: false,
          opposedPosition: true,
          labelStyle: const TextStyle(color: whiteColor),
         axisLine: const AxisLine(width: 0), // Remove border line of X-axis
          majorGridLines: const MajorGridLines(width: 0), // Remove vertical gridlines
          minorGridLines: const MinorGridLines(width: 0), // Remove vertical gridlines
          ),
          primaryYAxis: NumericAxis(
            numberFormat: currencyFormat,
            interval: 50000,
            maximum: 200000,
            labelStyle: const TextStyle(color: whiteColor),
             majorGridLines: const MajorGridLines(
            width: 1,
            dashArray: [2, 2], // Set dash array for dotted line
            color: Colors.grey, // Set color for dotted line
          ),
          minorGridLines: const MinorGridLines(
            width: 1,
            dashArray: [2, 2], // Set dash array for dotted line
            color: Colors.grey, // Set color for dotted line
          ),
          ),
          series: <ChartSeries>[
            StackedColumnSeries<ChartData, String>(
              dataSource: <ChartData>[
                ChartData('Aug', 150000, 200000),
                ChartData('Sept', 30000, 100000),
                ChartData('Oct', 100000, 13000),
              ],
              xValueMapper: (ChartData data, _) => data.month,
              yValueMapper: (ChartData data, _) => data.value1,
              groupName: 'a',
              dataLabelSettings: const DataLabelSettings(
                isVisible: false,
              ),
              color: const Color(0xFFEBCE4C),
              spacing: 0,
            ),
            StackedColumnSeries<ChartData, String>(
              dataSource: <ChartData>[
                ChartData('Aug', 10000, 30000),
                ChartData('Sept', 50000, 140000),
                ChartData('Oct', 100000, 50000),
              ],
              xValueMapper: (ChartData data, _) => data.month,
              groupName: 'a',
              yValueMapper: (ChartData data, _) => data.value2,
              dataLabelSettings: const DataLabelSettings(isVisible: false),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF495ECB),
                  Color(0xFF1C2F90),
                ],
              ),
              spacing: 0,
            ),
            StackedColumnSeries<ChartData2, String>(
              dataSource: <ChartData2>[
               ChartData2('Aug', 140000),
                ChartData2('Sept', 50000),
                ChartData2('Oct', 100000),
              ],
              xValueMapper: (ChartData2 data, _) => data.month,
              yValueMapper: (ChartData2 data, _) => data.value1,
              dataLabelSettings: const DataLabelSettings(isVisible: false),
              color: revenueIconBackground,
              spacing: 0,
            ),
            
          ],
        ),
      );
  }
}

class ChartData {
  final String month;
  final double value1;
  final double value2;

  ChartData(
    this.month,
    this.value1,
    this.value2,
  );
}
class ChartData2 {
  String month;
  double value1;



  ChartData2(
    this.month,
    this.value1,

  );
}
