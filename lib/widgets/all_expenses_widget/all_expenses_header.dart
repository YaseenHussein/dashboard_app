
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "All Expenses",
          style: TextStyles.textStyleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFF1F1F1)),
            borderRadius: BorderRadiusDirectional.circular(12),
          ),
          child: Row(
            children: [
              const Text(
                "Monthly",
                style: TextStyles.textStyleMedium16,
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                angle: -math.pi / 2,
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 24,
                  color: Color(0xff064061),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
