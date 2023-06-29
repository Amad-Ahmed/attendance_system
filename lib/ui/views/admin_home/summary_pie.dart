import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class SummaryPie extends StatelessWidget {
  const SummaryPie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: {
        "Present": 5,
        "Absent": 3,
        "Leave": 2,
      },
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      colorList: [
        Colors.green,
        Colors.red,
        Colors.yellow,
      ],
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 32,
      centerText: "HYBRID",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
    );
  }
}
