


import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Quick Invoice",
          style: TextStyles.textStyleSemiBold20,
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
