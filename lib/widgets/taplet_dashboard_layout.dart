import 'package:dashboard_app/widgets/Income_widget/income_section.dart';
import 'package:dashboard_app/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard_app/widgets/drawer_widget/custome_drawer.dart';
import 'package:dashboard_app/widgets/mobil_dashboard_layout.dart';
import 'package:dashboard_app/widgets/transaction_history_and_my_card_section.dart';
import 'package:flutter/material.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsetsDirectional.only(top: 40),
            child: MobilDashboardLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
