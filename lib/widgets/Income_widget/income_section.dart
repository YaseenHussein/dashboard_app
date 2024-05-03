import 'dart:developer';

import 'package:dashboard_app/utils/size_config.dart';
import 'package:dashboard_app/widgets/Income_widget/detailed_income_chart.dart';
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
    return const Padding(
      padding: EdgeInsetsDirectional.only(bottom: 40),
      child: CustomBackgroundContainer(
        child: Column(
          children: [
            IncomeSectionHeader(),
            IncomeSectionBody(),
          ],
        ),
      ),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log(SizeConfig.getWidth(context).toString());
    return SizeConfig.getWidth(context) <= 1800 &&
            SizeConfig.getWidth(context) >= SizeConfig.desktop
        ? const Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          )
        : const Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(flex: 2, child: IncomeDetailsListView())
            ],
          );
  }
}
