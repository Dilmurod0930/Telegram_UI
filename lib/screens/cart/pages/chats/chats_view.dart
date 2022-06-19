import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorF6F6F6,
      appBar: AppBar(
        backgroundColor: ColorsConst.colorF6F6F6,
        centerTitle: true,
        leading: TextButton(child: Text('Edit'.tr()), onPressed: () {}),
        title: Text(
          'Chats'.tr(),
          style: MyTextStyleComp.myTextStyle(size: 17, weight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      body: Column(),
    );
  }
}
