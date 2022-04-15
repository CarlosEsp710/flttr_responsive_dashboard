import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

import '../constants.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> paiCharts = [
      PieChartSectionData(
        color: primaryColor,
        value: 25,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: const Color(0xFF26E5FF),
        value: 20,
        showTitle: false,
        radius: 23,
      ),
      PieChartSectionData(
        color: const Color(0xFFFFCF26),
        value: 10,
        showTitle: false,
        radius: 21,
      ),
      PieChartSectionData(
        color: const Color(0xFFEE2727),
        value: 20,
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        color: primaryColor.withOpacity(0.1),
        value: 15,
        showTitle: false,
        radius: 17,
      ),
    ];

    return SizedBox(
      height: 200,
      child: Stack(
        children: <Widget>[
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiCharts,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: defaultPadding / 2),
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Text('of 128GB'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
