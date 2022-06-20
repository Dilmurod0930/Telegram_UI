import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_ui/core/constants/color_const.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:telegram_ui/mock/chats_data.dart';
import 'package:telegram_ui/screens/auth/cubit/auth_cubit.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsConst.colorWhite,
          centerTitle: true,
          elevation: 0,
          title:
              Text("Contacts", style: TextStyle(color: ColorsConst.colorBlack)),
          actions: [
            TextButton(
              child: Text('+'.tr(), style: const TextStyle(fontSize: 32)),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/cart', (route) => false);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemBuilder: (_, __) {
                    return Column(
                      children: [
                        InkWell(
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwzj_xB4wogYBhdri_Hx8XJPHEGAsJZEdZtA&usqp=CAU",
                              ),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(ChatsData.chatsDate[__]['name']),
                              ],
                            ),
                          ),
                          onLongPress: () {
                            showDialog(
                                context: context,
                                builder: (context) => alertDialog(context));
                          },
                        ),
                        const Divider(height: 2)
                      ],
                    );
                  },
                  itemCount: ChatsData.chatsDate.length,
                ),
              ),
            ],
          ),
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
            children: [
              a('Mark as Unread', ''),
              const Divider(),
              a('Mark as Unread', ''),
              const Divider(),
              a('Mark as Unread', ''),
              const Divider(),
              a('Mark as Unread', ''),
            ],
          ),
        ),
      ],
    );
  }

  Row a(text, nameSVG) {
    return Row(
      children: [
        Text('$text'.tr()),
        SvgPicture.asset('assets/icons/$nameSVG.svg')
      ],
    );
  }
}
