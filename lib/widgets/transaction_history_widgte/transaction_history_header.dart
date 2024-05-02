
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Transaction History",
          style: TextStyles.textStyleSemiBold20,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: TextStyles.textStyleMedium16
                  .copyWith(color: const Color(0xff4EB7F2)),
            ))
      ],
    );
  }
}
