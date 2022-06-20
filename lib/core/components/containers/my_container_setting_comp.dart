import 'package:flutter/material.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyContainerSettingComp {
  static Container myContainerSettingComp(
      BuildContext context, double h, Widget child) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: h,
      color: ColorsConst.colorWhite,
      child: child,
    );
  }
}
