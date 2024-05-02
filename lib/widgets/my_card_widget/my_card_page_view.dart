import 'package:dashboard_app/widgets/my_card_widget/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: MyCard(),
        ),
      ),
    );
  }
}
