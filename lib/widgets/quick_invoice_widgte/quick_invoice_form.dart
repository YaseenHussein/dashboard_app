import 'package:dashboard_app/widgets/quick_invoice_widgte/custom_button.dart';
import 'package:dashboard_app/widgets/quick_invoice_widgte/custom_text_field_with_label.dart';
import 'package:flutter/material.dart';
class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: CustomTextFieldWithLabel(
                hint: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextFieldWithLabel(
                hint: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(
              child: CustomTextFieldWithLabel(
                hint: 'type item  name',
                title: ' Item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextFieldWithLabel(
                hint: 'USD',
                title: 'Item mount',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: const Color(0xff4EB7F2),
                onPress: () {},
                title: 'Add more details',
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                onPress: () {},
                title: 'Send Money',
              ),
            ),
          ],
        )
      ],
    );
  }
}
