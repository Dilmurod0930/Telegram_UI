import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyAppBarCallsComp {
  static AppBar myAppBarCallsComp(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      leading: TextButton(
        child: Text(
          "Edit",
          style: MyTextStyleComp.myTextStyle(
            color: ColorsConst.color037EE5,
            size: 17,
          ),
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/callsAppBarAddCall.svg"),
          onPressed: () {},
        ),
      ],
      title: Container(
        padding: const EdgeInsets.only(left: 3, right: 20),
        height: 32,
        width: 160,
        decoration: BoxDecoration(
          color: ColorsConst.color767680_12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              height: 28,
              width: 76,
              decoration: BoxDecoration(
                color: ColorsConst.colorWhite,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "All",
                style: MyTextStyleComp.myTextStyle(),
              ),
            ),
            Text(
              "Missed",
              style: MyTextStyleComp.myTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
