import 'package:flutter/cupertino.dart';

class SizeConfig {
  static const tablet = 800;
  static const desktop = 1300;
  static double getWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double getHight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }
}
