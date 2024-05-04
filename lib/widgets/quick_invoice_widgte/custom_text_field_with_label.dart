import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/widgets/quick_invoice_widgte/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWithLabel extends StatelessWidget {
  const CustomTextFieldWithLabel(
      {super.key, required this.hint, required this.title});
  final String hint, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.textStyleMedium16(context: context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        )
      ],
    );
  }
}
