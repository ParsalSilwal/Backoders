import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color black900B2 = fromHex('#b2000000');

  static Color blueGray10001 = fromHex('#d9d9d9');

  static Color blueGray10002 = fromHex('#d0d0d0');

  static Color lightGreen200 = fromHex('#c1cb9c');

  static Color red500 = fromHex('#eb4335');

  static Color black9003f = fromHex('#3f000000');

  static Color black900 = fromHex('#000000');

  static Color lightGreen500 = fromHex('#96a461');

  static Color blueGray800 = fromHex('#3a4646');

  static Color blueGray900 = fromHex('#263238');

  static Color blueGray8003d = fromHex('#3d3a4646');

  static Color gray300A2 = fromHex('#a2e5e6e1');

  static Color gray600 = fromHex('#737373');

  static Color gray700 = fromHex('#5d6868');

  static Color lightGreen20033 = fromHex('#33c1cb9c');

  static Color blueGray100 = fromHex('#d8dadc');

  static Color black900E5 = fromHex('#e5000000');

  static Color gray800 = fromHex('#49454f');

  static Color gray900 = fromHex('#1c1b1f');

  static Color gray300 = fromHex('#e5e6e1');

  static Color blueGray80019 = fromHex('#193a4646');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color red50001 = fromHex('#f54035');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
