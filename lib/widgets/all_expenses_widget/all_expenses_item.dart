import 'package:dashboard_app/model/all_expenses_item_model.dart';
import 'package:dashboard_app/widgets/all_expenses_widget/active_all_expenses_item.dart';
import 'package:dashboard_app/widgets/all_expenses_widget/in_active_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild:
          ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      secondChild:
          InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      duration: const Duration(milliseconds: 500),
    );
  }
}
