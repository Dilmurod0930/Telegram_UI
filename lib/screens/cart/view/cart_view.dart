import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';
import 'package:telegram_ui/screens/cart/pages/calls/calls_view.dart';
import 'package:telegram_ui/screens/cart/pages/chats/chats_view.dart';
import 'package:telegram_ui/screens/cart/pages/contacts/contacts_view.dart';
import 'package:telegram_ui/screens/cart/pages/settings/settings_view.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> with TickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
    controller!.index = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children:  const [
          ContactsView(),
          CallsView(),
          ChatsView(),
          SettingsView(),
        ],
      ),
      bottomNavigationBar: TabBar(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        indicatorColor: Colors.transparent,
        tabs: [
          myTab(0, 'tabBarContacts2', 'tabBarContacts1', 'Contacts'),
          myTab(1, 'tabBarCalls2', 'tabBarCalls1', 'Calls'),
          myTab(2, 'tabBarChats2', 'tabBarChats1', 'Chats'),
          myTabProfile(3, 'tabBarContacts2', 'tabBarContacts1', 'Settings'),
        ],
        onTap: (v) {
          setState(() {});
          controller!.index = v;
        },
      ),
    );
  }

  Tab myTabProfile(int index, String icon1, String icon2, String text) {
    return Tab(
      icon: controller!.index == index
          ? SvgPicture.asset('assets/icons/$icon1.svg')
          : SvgPicture.asset('assets/icons/$icon2.svg'),
      child: Text(
        text.tr(),
        style: MyTextStyleComp.myTextStyle(
          color: controller!.index == index
              ? ColorsConst.color007AFF
              : ColorsConst.color545458,
        ),
      ),
    );
  }

  Tab myTab(int index, String icon1, String icon2, String text) {
    return Tab(
      icon: controller!.index == index
          ? SvgPicture.asset('assets/icons/$icon1.svg')
          : SvgPicture.asset('assets/icons/$icon2.svg'),
      child: Text(
        text.tr(),
        style: MyTextStyleComp.myTextStyle(
          color: controller!.index == index
              ? ColorsConst.color007AFF
              : ColorsConst.color545458,
        ),
      ),
    );
  }
}
