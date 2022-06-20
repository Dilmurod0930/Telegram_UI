import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class MyAppBarSettingComp {
  static AppBar myAppBarSettings(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: Text(
        "Settings",
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
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: InkWell(
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            height: MediaQuery.of(context).size.height * 0.045,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorsConst.color767680_12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, color: ColorsConst.color3C3C43),
                const SizedBox(width: 10),
                Text(
                  "Search",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorsConst.color3C3C43,
                    size: 17,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
