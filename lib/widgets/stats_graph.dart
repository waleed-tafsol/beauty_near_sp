import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utills/color_constant.dart';

class StatsGraph extends StatelessWidget {
  const StatsGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false), // Remove grid lines
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false), // Hide left titles
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false), // Hide right titles
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false), // Hide top titles
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize:
                    20, // Reduce the reserved size to decrease the gap
                getTitlesWidget: (value, meta) {
                  // Define the days of the week for the X axis
                  List<String> daysOfWeek = [
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat',
                    'Sun',
                  ];
                  int index = value
                      .toInt(); // Use the value directly as the index
                  if (index >= 0 && index < daysOfWeek.length) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.3.h),
                      child: Text(
                        daysOfWeek[index],
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Color(0xff747474),
                        ),
                      ),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
                interval: 1,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: false,
            border: Border.all(color: Colors.black, width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(1, 1.5),
                FlSpot(2, 2.8),
                FlSpot(3, 3.2),
                FlSpot(4, 4.1),
                FlSpot(5, 2.5),
                FlSpot(6, 3.0),
              ],
              isCurved: true,
              color: AppColors.kPrimaryColor,
              gradient: AppColors.primaryGradient,
              barWidth: 4,
              belowBarData: BarAreaData(
                show: true,
                applyCutOffY: true,

                gradient: AppColors.secondaryGradient,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
