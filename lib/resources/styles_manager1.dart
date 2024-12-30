import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/font_manager.dart';
import 'package:modus_assignment_app/resources/font_manager1.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getKarlaRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant1.fontFamily, FontWeightManager1.regular, color);
}

TextStyle getKarlaBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant1.fontFamily, FontWeightManager1.bold, color);
}
