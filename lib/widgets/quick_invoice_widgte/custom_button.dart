

import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.textColor,
      this.backgroundColor});
  final String title;
  final VoidCallback onPress;
  final Color? textColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            title,
            style: TextStyles.textStyleSemiBold18.copyWith(color: textColor),
          )),
    );
  }
}
