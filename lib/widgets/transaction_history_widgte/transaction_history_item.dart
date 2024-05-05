import 'package:dashboard_app/model/transaction_history_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.item});
  final TransactionHistoryModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 10),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            item.date,
            style: TextStyles.textStyleRegular16(context: context)
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
        ),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            item.title,
            style: TextStyles.textStyleSemiBold16(context: context),
          ),
        ),
        trailing: Text(
          item.amount,
          style: TextStyles.textStyleSemiBold20(context: context).copyWith(
            color: item.isWithDrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
