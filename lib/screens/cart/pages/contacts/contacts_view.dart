import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_ui/core/components/appbars/my_app_bar_contacts_comp.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';
class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorWhite,
      appBar: MyAppBarContactsComp.myAppBarContactsComp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorsConst.colorTransparent,
                  child: SvgPicture.asset("assets/icons/contactsLocation.svg"),
                ),
                title: Text(
                  "Add People Nearby",
                  style: MyTextStyleComp.myTextStyle(
                    size: 20,
                    color: ColorsConst.color037EE5,
                    weight: FontWeight.w400,
                  ),
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              height: 0,
              indent: MediaQuery.of(context).size.width * 0.23,
            ),
            InkWell(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorsConst.colorTransparent,
                  child: SvgPicture.asset(
                      "assets/icons/contactsInviteFriends.svg"),
                ),
                title: Text(
                  "Invite Friends",
                  style: MyTextStyleComp.myTextStyle(
                    size: 20,
                    color: ColorsConst.color037EE5,
                    weight: FontWeight.w400,
                  ),
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              height: 0,
              indent: MediaQuery.of(context).size.width * 0.23,
            ),
            SizedBox(
              // TabBar qoshsak shu yerda height da hato berishi mumkin
              height: MediaQuery.of(context).size.height * 1.772,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/$index",
                          ),
                          backgroundColor: ColorsConst.color007AFF,
                        ),
                        title: Text(
                          "Nick Name",
                          style: MyTextStyleComp.myTextStyle(
                            size: 20,
                            color: ColorsConst.colorBlack,
                          ),
                        ),
                        subtitle: Text(
                          "Last sin recently",
                          style: MyTextStyleComp.myTextStyle(
                            size: 15,
                            color: ColorsConst.colorBlack,
                            weight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                      indent: MediaQuery.of(context).size.width * 0.23,
                    ),
                  ],
                ),
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
