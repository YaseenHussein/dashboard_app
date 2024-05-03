import 'package:dashboard_app/widgets/Income_widget/Income_section.dart';
import 'package:dashboard_app/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard_app/widgets/drawer_widget/custome_drawer.dart';
import 'package:dashboard_app/widgets/transaction_history_and_my_card_section.dart';
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
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                        TransactionHistoryAndMyCardSection(),
                          IncomeSection(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
