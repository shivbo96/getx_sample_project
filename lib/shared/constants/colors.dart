import 'package:flutter/material.dart';

class ColorConstants {
  // static Color lightScaffoldBackgroundColor = hexToColor('#92CEF6');
  // static Color darkScaffoldBackgroundColor = hexToColor('#92CEF6');
  // static Color secondaryAppColor = hexToColor('#92CEF6');
  static Color secondaryDarkAppColor = Colors.white;
  static Color tipColor = hexToColor('#B6B6B6');
  static Color darkGray = const Color(0xFF9F9F9F);
  static Color black = const Color(0xFF000000);
  static Color white = const Color(0xFFFFFFFF);


  // getx_sample's colors
  static Color transparent = hexToColor('#0000ffff');
  static Color buttonBG = hexToColor('#115B78');
  static Color textColor = hexToColor('#061A5D');
  static Color mainBgColor = hexToColor('#F8F7F1');
  static Color whiteBg = hexToColor('#FFFFFF0D');
  static Color brownBg = hexToColor('#372314');
  static Color lightGreyBg = hexToColor('#CCCCCC');
  static Color richTextColor = hexToColor('#125B78');
  static Color codeTextColor = hexToColor('#D75F32');
  static Color switchButtonGrey = hexToColor('#E4E4E4');
  static Color selectDrawerOptionColor = hexToColor('#EEDAC1');
  static Color errorColor = hexToColor('#FF0000');
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
