import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';
import 'package:telegram_ui/mock/chats_data.dart';
import 'package:telegram_ui/screens/auth/state/auth_state.dart';

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
        actions: [
          InkWell(child: SvgPicture.asset('assets/icons/chatsAppBarShape.svg')),
          const SizedBox(width: 10),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 36),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: ColorsConst.color767680_12,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 36,
              child: TextFormField(
                keyboardType: TextInputType.name,
                // cont: ,
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (_, __) {
                  return InkWell(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            'assets/images/users/${ChatsData.chatsDate[__]['image']}.png'),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ChatsData.chatsDate[__]['name']),
                          ChatsData.chatsDate[__]['bio'] != 'null'
                              ? Text(ChatsData.chatsDate[__]['bio'])
                              : const SizedBox(),
                        ],
                      ),
                      subtitle: Text(ChatsData.chatsDate[__]['comment']),
                    ),
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (context) => alertDialog(context),
                      );
                    },
                  );
                },
                itemCount: ChatsData.chatsDate.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog alertDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsConst.color858E96.withAlpha(240),
      insetPadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.all(8),
      actionsAlignment: MainAxisAlignment.start,
      content: Padding(
        padding: const EdgeInsets.only(left: 11, right: 11, top: 76),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.62,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          height: MediaQuery.of(context).size.height * 0.21,
          width: MediaQuery.of(context).size.width * 0.66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsConst.colorFEFEFE,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              a(context, 'Mark as Unread', 'chatModalCommet'),
              const Divider(),
              a(context, 'Pin', 'chatModalPin'),
              const Divider(),
              a(context, 'Mute', 'chatModalMute'),
              const Divider(),
              a(context, 'Delete', 'chatModalDelete'),
            ],
          ),
        ),
      ],
    );
  }

  Padding a(BuildContext context, text, nameSVG) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$text'.tr(),
              style: MyTextStyleComp.myTextStyle(
                size: 17,
                weight: FontWeight.w400,
                color: text == 'Delete'
                    ? ColorsConst.colorFE3B30
                    : ColorsConst.colorBlack,
              ),
            ),
            SvgPicture.asset('assets/icons/$nameSVG.svg', height: 19),
          ],
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
