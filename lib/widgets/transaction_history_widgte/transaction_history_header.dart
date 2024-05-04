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
        Text(
          "Transaction History",
          style: TextStyles.textStyleSemiBold20(context: context),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: TextStyles.textStyleMedium16(context: context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            ))
      ],
    );
  }
}
