import 'dart:ffi';

import 'package:flutter/material.dart';

class MyTextStyleComp {
  static TextStyle myTextStyle({double size = 14, color, weight, style}) {
    return TextStyle(
      fontSize: size,
      color: color ?? Colors.black,
      fontWeight: weight ?? FontWeight.normal,
      fontStyle: style ?? FontStyle.normal,
    );
  }
}
