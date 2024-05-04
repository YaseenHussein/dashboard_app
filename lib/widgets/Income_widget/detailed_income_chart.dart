import 'package:dashboard_app/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          color: const Color(0xff208CC8),
          titleStyle: TextStyles.textStyleMedium16(context: context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          title: activeIndex == 0 ? "Design service" : "40%",
          radius: activeIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.3 : null,
          titleStyle: TextStyles.textStyleMedium16(context: context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          color: const Color(0xff4EB7F2),
          value: 25,
          radius: activeIndex == 1 ? 50 : 40,
          title: activeIndex == 1 ? "Design product" : "25%",
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          titleStyle: TextStyles.textStyleMedium16(context: context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          color: const Color(0xff064061),
          value: 20,
          radius: activeIndex == 2 ? 50 : 40,
          title: activeIndex == 2 ? "Product royalti" : "20%",
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          color: const Color(0xffE2DECD),
          value: 22,
          radius: activeIndex == 3 ? 50 : 40,
          titleStyle: TextStyles.textStyleMedium16(context: context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          title: activeIndex == 3 ? "Other" : "22%",
        ),
      ],
    );
  }
}
