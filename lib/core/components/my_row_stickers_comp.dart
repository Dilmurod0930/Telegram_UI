import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyPaddingStickersComp {
  static Padding myPaddingStickersComp(String text, Widget widget) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: MyTextStyleComp.myTextStyle(
              color: ColorsConst.colorBlack,
              size: 18,
            ),
          ),
          widget,
        ],
      ),
    );
  }
}
