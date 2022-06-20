import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyInkwellSettingsComp {
  static InkWell myInkwellSettingsComp(String svg, String text, function) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/$svg.svg"),
                  const SizedBox(width: 20),
                  Text(
                    text,
                    style: MyTextStyleComp.myTextStyle(size: 18),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: ColorsConst.color3C3C43,
            ),
          ],
        ),
      ),
    );
  }
}
