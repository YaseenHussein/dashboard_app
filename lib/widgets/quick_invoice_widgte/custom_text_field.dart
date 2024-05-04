import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyles.textStyleRegular16(context: context)
            .copyWith(color: const Color(0xffAAAAAA)),
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
}
