

import 'package:dashboard_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class TextStyles {
  static TextStyle textStyleRegular16({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleMedium16({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleSemiBold16({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleSemiBold20({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleRegular12({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 12, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle textStyleSemiBold24({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 24, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle textStyleRegular14({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 14, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle textStyleBold16({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle textStyleSemiBold18({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 18, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle textStyleMedium20({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xFF4EB7F2),
    );
  }
}

double getResponsiveFontSize(
    {required double fontSize, required BuildContext context}) {
  double scaleFactor = getScaleFactor(context);
  var responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  /* PlatformDispatcher  dispatcher = PlatformDispatcher.instance;
  double phyiscalWidth = dispatcher.views.first.physicalSize.width;
  double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = phyiscalWidth / devicePixelRatio;
*/
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 650;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
