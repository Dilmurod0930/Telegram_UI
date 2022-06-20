import 'package:flutter/material.dart';

class MyDividerSettingComp {
   static Divider myDividerSettingComp(BuildContext context) {
    return Divider(
      thickness: 1,
      indent: MediaQuery.of(context).size.width * 0.17,
    );
  }
}