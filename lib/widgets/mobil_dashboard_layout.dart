import 'package:dashboard_app/widgets/Income_widget/income_section.dart';
import 'package:dashboard_app/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard_app/widgets/transaction_history_and_my_card_section.dart';
import 'package:flutter/material.dart';

class MobilDashboardLayout extends StatelessWidget {
  const MobilDashboardLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            width: 24,
          ),
          TransactionHistoryAndMyCardSection(),
          SizedBox(
            width: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
