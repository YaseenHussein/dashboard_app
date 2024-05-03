import 'package:dashboard_app/model/transaction_history_model.dart';
import 'package:dashboard_app/widgets/transaction_history_widgte/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          items.length, (index) => TransactionHistoryItem(item: items[index])),
    );
  }
}
