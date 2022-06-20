import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_ui/core/components/appbars/my_app_bar_calls_comp.dart';
import 'package:telegram_ui/core/components/my_text_style_comp.dart';
import 'package:telegram_ui/core/constants/color_const.dart';


class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarCallsComp.myAppBarCallsComp(context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (context, index) => Column(
            children: [
              InkWell(
                child: ListTile(
                  leading: SizedBox(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/callsIncoming.svg"),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/$index",
                          ),
                          backgroundColor: ColorsConst.color007AFF,
                        ),
                      ],
                    ),
                  ),
                  title: Text(
                    "Nick Name",
                    style: MyTextStyleComp.myTextStyle(
                        size: 20, color: ColorsConst.colorBlack),
                  ),
                  subtitle: Text(
                    "Outgoing",
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.color8E8E93,
                      size: 15,
                    ),
                  ),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("$index/${index + 10}"),
                        const SizedBox(width: 5),
                        InkWell(
                          child: SvgPicture.asset("assets/icons/callsInfo.svg"),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
              Divider(
                thickness: 1,
                height: 0,
                indent: MediaQuery.of(context).size.width * 0.28,
              ),
            ],
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}