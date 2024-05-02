
import 'package:dashboard_app/model/income_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeModel});
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: incomeModel.color,
        radius: 12,
      ),
      title: Text(
        incomeModel.title,
        style: TextStyles.textStyleRegular16,
      ),
      trailing: Text(
        incomeModel.value,
        style: TextStyles.textStyleMedium16,
      ),
    );
  }
}
