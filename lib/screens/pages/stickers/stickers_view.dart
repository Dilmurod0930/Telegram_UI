import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/appbars/my_app_bart_calls_comp.dart';
import 'package:telegram_ui/core/components/dividers/my_divider_stickers_comp.dart';
import 'package:telegram_ui/core/components/inkwells/my_inkwell_stickers_comp.dart';
import 'package:telegram_ui/core/components/kontakt/my_container_stickers_comp.dart';
import 'package:telegram_ui/core/components/my_row_stickers_comp.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class StickersView extends StatelessWidget {
  const StickersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorF6F6F6,
      appBar: MyAppBarSticersComp.myAppBarSticersComp(context),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          MyContainerStickersComp.myContainerStickersComp(
            context,
            MediaQuery.of(context).size.height * 0.36,
            Column(
              children: [
                MyPaddingStickersComp.myPaddingStickersComp(
                  "Suggest by Emoji",
                  Row(
                    children: [
                      Text(
                        "All Sets",
                        style: MyTextStyleComp.myTextStyle(
                          color: ColorsConst.color3C3C43,
                          size: 17,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorsConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                MyDividerStickersComp.myDividerStickersComp(context, 0.03),
                MyPaddingStickersComp.myPaddingStickersComp(
                  "Trending Stickers",
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: ColorsConst.color007AFF,
                        child: const Text("15"),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorsConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                MyDividerStickersComp.myDividerStickersComp(context, 0.03),
                MyPaddingStickersComp.myPaddingStickersComp(
                  "Archived Stickers",
                  Row(
                    children: [
                      Text(
                        "46",
                        style: MyTextStyleComp.myTextStyle(
                          color: ColorsConst.color3C3C43,
                          size: 18,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorsConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                MyDividerStickersComp.myDividerStickersComp(context, 0.03),
                MyPaddingStickersComp.myPaddingStickersComp(
                  "Masks",
                  Icon(
                    Icons.chevron_right,
                    color: ColorsConst.color3C3C43,
                  ),
                ),
                MyDividerStickersComp.myDividerStickersComp(context, 0.03),
                MyPaddingStickersComp.myPaddingStickersComp(
                  "Loop Animated Stickers",
                  CupertinoSwitch(value: true, onChanged: (v) {}),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Animated stickers will play in chat continuously.",
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.color636366,
                      size: 15,
                    ),
                  ),
                  Text(
                    "STICKER SETS",
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.color636366,
                      size: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          MyContainerStickersComp.myContainerStickersComp(
            context,
            MediaQuery.of(context).size.height * 0.37,
            Column(
              children: [
                const SizedBox(height: 10),
                MyInkwellStickersComp.myInkwellStickersComp(
                    "stickersSimba", "Simba"),
                MyDividerStickersComp.myDividerStickersComp(context, 0.21),
                MyInkwellStickersComp.myInkwellStickersComp(
                    "stickersDiggy", "Diggy animated"),
                MyDividerStickersComp.myDividerStickersComp(context, 0.21),
                MyInkwellStickersComp.myInkwellStickersComp(
                    "stickersTed", "Ted"),
                MyDividerStickersComp.myDividerStickersComp(context, 0.21),
                MyInkwellStickersComp.myInkwellStickersComp(
                    "stickersEgg", "Egg Yolk"),
                MyDividerStickersComp.myDividerStickersComp(context, 0.21),
                MyInkwellStickersComp.myInkwellStickersComp(
                    "stickersScreaming", "Screaming Checkin"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
