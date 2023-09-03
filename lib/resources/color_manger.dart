import 'package:flutter/material.dart';

class ColorManager {
  static Color general = const Color(0xffffffff);
  static Color socialText = const Color(0xff363F5E);

  static Color primary900 = const Color(0xff091A7A);
  static Color primary500 = const Color(0xff3366FF);
  static Color primary200 = const Color(0xffADC8FF);
  static Color primary100 = const Color(0xFFD6E4FF);
  static Color primary50 = const Color(0xffECF2FF);

  static Color neutral900 = const Color(0xff111827);
  static Color neutral800 = const Color(0xff1F2937);
  static Color neutral500 = const Color(0xff6B7280);
  static Color neutral400 = const Color(0xff9CA3AF);
  static Color neutral300 = const Color(0xffD1D5DB);
  static Color neutral200 = const Color(0xFFFAFAFA);
  static Color neutral100 = const Color(0xFFF4F4F5);

  static Color danger500 = const Color(0xFFFF472B);
  static Color success500 = const Color(0xFF60C631);

  static Color splashColor = const Color(0xffD6E4FF);

  static Color colorBoarderChange(bool selected) {
    return selected ? ColorManager.primary500 : ColorManager.neutral300;
  }

  static Color colorBodyChange(bool selected) {
    return selected ? ColorManager.primary100 : ColorManager.neutral200;
  }
}