import 'package:flutter/cupertino.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyPaddingProfilesComp {
  static Padding myPaddingProfilesComp(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: MyTextStyleComp.myTextStyle(
          color: ColorsConst.color636366,
          size: 15,
        ),
      ),
    );
  }
}
