import 'package:flutter/material.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyContainerProfilesComp {
  static Container myContainerProfilesComp(
    BuildContext context,
    double h,
    Widget child,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: h,
      color: ColorsConst.colorWhite,
      child: child,
    );
  }
}
