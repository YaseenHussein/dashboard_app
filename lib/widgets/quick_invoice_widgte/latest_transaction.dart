import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/widgets/quick_invoice_widgte/latest_transaction_list_view.dart';
import 'package:flutter/cupertino.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: TextStyles.textStyleMedium16(context: context),
        ),
        const LatestTransactionListView(),
      ],
    );
  }
}
