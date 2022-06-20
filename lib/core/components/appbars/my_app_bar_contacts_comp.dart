import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyAppBarContactsComp {
  static AppBar myAppBarContactsComp() {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: Text(
        "Contacts",
        style: MyTextStyleComp.myTextStyle(
          size: 20,
          color: ColorsConst.colorBlack,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add, color: ColorsConst.color007AFF),
          onPressed: () {},
        ),
      ],
    );
  }
}
