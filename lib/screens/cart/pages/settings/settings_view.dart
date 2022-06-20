import 'package:flutter/material.dart';
import 'package:telegram_ui/core/components/appbars/my_app_bar_setting_comp.dart';
import 'package:telegram_ui/core/components/dividers/my_divider_setting_comp.dart';
import 'package:telegram_ui/core/components/inkwells/my_inkwell_settings_comp.dart';
import 'package:telegram_ui/core/components/kontakt/my_container_setting_comp.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConst.colorF6F6F6,
        appBar: MyAppBarSettingComp.myAppBarSettings(context),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                InkWell(
                  child: MyContainerSettingComp.myContainerSettingComp(
                    context,
                    MediaQuery.of(context).size.height * 0.2,
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: const NetworkImage(
                          "https://source.unsplash.com/random/${1}",
                        ),
                        backgroundColor: ColorsConst.color007AFF,
                      ),
                      title: Text(
                        "Name",
                        style: MyTextStyleComp.myTextStyle(
                          color: ColorsConst.colorBlack,
                          size: 20,
                        ),
                      ),
                      subtitle: const Text('+1 222 777 9934\n@dima_d'),
                      trailing: const Icon(Icons.chevron_right_sharp),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.048),
                MyContainerSettingComp.myContainerSettingComp(
                  context,
                  MediaQuery.of(context).size.height * 0.1,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: MyInkwellSettingsComp.myInkwellSettingsComp(
                            "tabBarContacts1", " Dima ", () {}),
                      ),
                      MyDividerSettingComp.myDividerSettingComp(context),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: MyInkwellSettingsComp.myInkwellSettingsComp(
                            "settingsAdd", "  Add Account", () {}),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.048),
                MyContainerSettingComp.myContainerSettingComp(
                  context,
                  MediaQuery.of(context).size.height * 0.175,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: MyInkwellSettingsComp.myInkwellSettingsComp(
                            "settingsSaved", "Saved Messages", () {
                          Navigator.pushNamed(context, "/");
                        }),
                      ),
                      MyDividerSettingComp.myDividerSettingComp(context),
                      MyInkwellSettingsComp.myInkwellSettingsComp(
                          "settingsCall", "Recent Calls", () {}),
                      MyDividerSettingComp.myDividerSettingComp(context),
                      MyInkwellSettingsComp.myInkwellSettingsComp(
                          "settingsStikers", "Stickers", () {
                        Navigator.pushNamed(context, '/stickers');
                      }),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.048),
                MyContainerSettingComp.myContainerSettingComp(
                  context,
                  MediaQuery.of(context).size.height * 0.23,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: MyInkwellSettingsComp.myInkwellSettingsComp(
                          "settingsNotificationsAndSounds",
                          "Notifications and Sounds",
                          () {},
                        ),
                      ),
                      MyDividerSettingComp.myDividerSettingComp(context),
                      MyInkwellSettingsComp.myInkwellSettingsComp(
                          "settingsPrivacySecurity",
                          "Privacy and Security",
                          () {}),
                      MyDividerSettingComp.myDividerSettingComp(context),
                      MyInkwellSettingsComp.myInkwellSettingsComp(
                          "settingsDataStorage", "Data and Storage", () {}),
                      MyDividerSettingComp.myDividerSettingComp(context),
                      MyInkwellSettingsComp.myInkwellSettingsComp(
                          "settingsAppearance", "Appearance", () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
