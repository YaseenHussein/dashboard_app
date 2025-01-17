import 'package:dashboard_app/widgets/custom_background_container.dart';
import 'package:dashboard_app/widgets/my_card_widget/my_card_section.dart';
import 'package:dashboard_app/widgets/transaction_history_widgte/transaction_history.dart';
import 'package:flutter/material.dart';

class TransactionHistoryAndMyCardSection extends StatelessWidget {
  const TransactionHistoryAndMyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.only(top: 40, bottom: 24),
      child: CustomBackgroundContainer(
          child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      )),
    );
  }
}
