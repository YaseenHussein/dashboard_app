import 'package:dashboard_app/widgets/Income_widget/income_chart.dart';
import 'package:dashboard_app/widgets/Income_widget/income_details_list_view.dart';
import 'package:dashboard_app/widgets/Income_widget/income_section_header.dart';
import 'package:dashboard_app/widgets/custom_background_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(child: IncomeDetailsListView())
            ],
          ),
        ],
      ),
    );
  }
}
