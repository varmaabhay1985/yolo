import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex('#FFFFFF');
  static Color secondaryColor = HexColor.fromHex('#000000');
  static Color splashColor1 = HexColor.fromHex('#FDFDFE');
  static Color splashColor2 = HexColor.fromHex('#009688');
  static Color splashTextColor2 = HexColor.fromHex('#27A69A');
  static Color visibilityIconColor = HexColor.fromHex('#A9B2B9');
  static Color hintTextColor = HexColor.fromHex('#5A5A5A');
  static Color accountExistTextColor = HexColor.fromHex('#7A7878');
  static Color searchBoxColor = HexColor.fromHex('#F5F5F5');
  static Color searchBoxTextColor = HexColor.fromHex('#7A7A7A');
  static Color bannerTextColor = HexColor.fromHex('#F0F0F0');
  static Color clusterTextColor = HexColor.fromHex('#CBCBCB');
  static Color chipTextColor = HexColor.fromHex('#77838F');
  static Color msgTextBorderColor = HexColor.fromHex('#EFEFEF');
  static Color msgTextColor = HexColor.fromHex('#605D5D');
  static Color msgTextFieldColor = HexColor.fromHex('#969393');
  static Color msgTextFieldIconColor = HexColor.fromHex('#717171');
  static Color copyrightTextColor = HexColor.fromHex('#C4C4C4');
  static Color starColor = HexColor.fromHex('#FFD703');
  static Color postTextColor = HexColor.fromHex('#7B7A7A');
  static Color postTextIconColor = HexColor.fromHex('#B9B1AA');
  static Color rodColor = HexColor.fromHex('#7E7E7E');
  static Color backIconColor = HexColor.fromHex('#493831');
  static Color circleColor = HexColor.fromHex('#D9D9D9');
  static Color checkBoxOptionsTextColor = HexColor.fromHex('#656565');
  static Color addressSubTextColor = HexColor.fromHex('#ABABAB');
  static Color notificationCardColor = HexColor.fromHex('#F3FEFD');
  static Color photoColor = HexColor.fromHex('#CFE8E5');
  static Color settingsTextColor = HexColor.fromHex('#5A667A');
  static Color settingsTextIconColor = HexColor.fromHex('#8F8F8F');
  static Color settingsLineGraphColor1 = HexColor.fromHex('#008182');
  static Color settingsLineGraphColor2 = HexColor.fromHex('#8AFFFF');
}

extension HexColor on Color {
  static Color fromHex(String hexColorSting) {
    hexColorSting = hexColorSting.replaceAll('#', '');
    if (hexColorSting.length == 6) {
      hexColorSting = 'FF' + hexColorSting;
    }
    return Color(int.parse(hexColorSting, radix: 16));
  }
}
