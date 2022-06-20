import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyAppBarSticersComp {
  static AppBar myAppBarSticersComp(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: Text(
        "Stickers",
        style: MyTextStyleComp.myTextStyle(
          size: 20,
          color: ColorsConst.colorBlack,
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            "Edit",
            style: MyTextStyleComp.myTextStyle(
              color: ColorsConst.color037EE5,
              size: 17,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
