import 'package:dashboard_app/widgets/my_card_widget/custom_dot.dart';
import 'package:flutter/material.dart';

class DotsInductor extends StatelessWidget {
  const DotsInductor({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: CustomDot(isActive: index == currentIndex),
              )),
    );
  }
}
