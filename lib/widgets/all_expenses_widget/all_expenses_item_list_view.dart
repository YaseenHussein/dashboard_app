import 'package:dashboard_app/model/all_expenses_item_model.dart';
import 'package:dashboard_app/utils/assets_data.dart';
import 'package:dashboard_app/widgets/all_expenses_widget/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              if (activeIndex != 0) {
                setState(() {
                  activeIndex = 0;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isActive: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              if (activeIndex != 1) {
                setState(() {
                  activeIndex = 1;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isActive: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              if (activeIndex != 2) {
                setState(() {
                  activeIndex = 2;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isActive: activeIndex == 2,
            ),
          ),
        ),
      ],
    );

    ///asMap.entries give us to option the first is key and the key is the a index
    ///the second is value the value is our value
    ///the general value is [Iterable<MapEntry<K, V>>]
    /* return Row(
      children: items
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: InkWell(
                onTap: () {
                  if (activeIndex != e.key) {
                    setState(() {
                      activeIndex = e.key;
                    });
                  }
                },
                child: AllExpensesItem(
                  allExpensesItemModel: e.value,
                  isActive: activeIndex == e.key,
                ),
              ),
            ),
          )
          .toList(),);*/
  }
}
