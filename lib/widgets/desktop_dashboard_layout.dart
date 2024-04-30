import 'package:dashboard_app/widgets/all_expenses_widget/all_expenses.dart';
import 'package:dashboard_app/widgets/drawer_widget/custome_drawer.dart';
import 'package:dashboard_app/widgets/quick_invoice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: QuickInvoice(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
