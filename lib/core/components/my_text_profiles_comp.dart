import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyTextProfilesTextComp {
  static Text myTextProfilesTextComp1(String text) {
    return Text(
      text,
      style: MyTextStyleComp.myTextStyle(size: 18),
    );
  }

  static Text myTextProfilesTextComp2(String text) {
    return Text(
      text,
      style: MyTextStyleComp.myTextStyle(
        color: ColorsConst.color3C3C43,
        size: 18,
      ),
    );
  }
}
