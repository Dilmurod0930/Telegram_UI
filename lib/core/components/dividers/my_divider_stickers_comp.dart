import 'package:flutter/material.dart';

class MyDividerStickersComp {
  static Divider myDividerStickersComp(BuildContext context, double size) {
    return Divider(
      thickness: 1,
      indent: MediaQuery.of(context).size.width * size,
    );
  }
}
