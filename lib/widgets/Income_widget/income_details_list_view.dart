import 'package:dashboard_app/model/income_model.dart';
import 'package:dashboard_app/widgets/Income_widget/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  static const items = [
    IncomeModel(
        color: Color(0xff208CC8), title: "Design service", value: "40%"),
    IncomeModel(
        color: Color(0xff4EB7F2), title: "Design product", value: "25%"),
    IncomeModel(
        color: Color(0xff064061), title: "Product royalti", value: "20%"),
    IncomeModel(color: Color(0xffE2DECD), title: "Other", value: "22%"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => IncomeDetailsItem(
          incomeModel: items[index],
        ),
      ),
    );
  }
}
