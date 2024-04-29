// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, curly_braces_in_flow_control_structures, avoid_unnecessary_containers, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
// import 'package:proojecttt/alarm/constans/theme_data.dart';
// import 'package:proojecttt/alarm/data.dart';
// import 'package:proojecttt/alarm/enums.dart';
// import 'package:proojecttt/alarm/models/menu_info.dart';
// import 'package:proojecttt/alarm/views/alarm_page.dart';
// import 'package:proojecttt/alarm/views/clock_page.dart';
import 'package:provider/provider.dart';
import 'package:untitled/alarm/constans/theme_data.dart';
import 'package:untitled/alarm/data.dart';
import 'package:untitled/alarm/enums.dart';
import 'package:untitled/alarm/models/menu_info.dart';
import 'package:untitled/alarm/views/alarm_page.dart';
import 'package:untitled/alarm/views/clock_page.dart';

class home_alarm extends StatefulWidget {
  @override
  _home_alarmState createState() => _home_alarmState();
}

class _home_alarmState extends State<home_alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: CustomColors.pageBackgroundColor,
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuItems.map((currentMenuInfo) => buildMenuButton(currentMenuInfo)).toList(),
          ),
          VerticalDivider(
            color: CustomColors.dividerColor,
            width: 1,
          ),
          Expanded(
            child: Consumer<MenuInfo>(
              builder: (BuildContext context, MenuInfo value, Widget? child) {
                if (value.menuType == MenuType.clock)
                  return ClockPage();
                else //if (value.menuType == MenuType.alarm)
                  return AlarmPage();
                // else
                //   return Container(
                //     child: RichText(
                //       text: TextSpan(
                //         style: TextStyle(fontSize: 20),
                //         children: <TextSpan>[
                //           TextSpan(text: 'Upcoming Tutorial\n'),
                //           TextSpan(
                //             text: value.title,
                //             style: TextStyle(fontSize: 48),
                //           ),
                //         ],
                //       ),
                //     ),
                //   );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(MenuInfo currentMenuInfo) {
    return Consumer<MenuInfo>(
      builder: (BuildContext context, MenuInfo value, Widget? child) {
        return MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(32))),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
          color: currentMenuInfo.menuType == value.menuType ? CustomColors.menuBackgroundColor : CustomColors.pageBackgroundColor,
          onPressed: () {
            var menuInfo = Provider.of<MenuInfo>(context, listen: false);
            menuInfo.updateMenu(currentMenuInfo);
          },
          child: Column(
            children: <Widget>[
              Image.asset(
                currentMenuInfo.imageSource,
                scale: 1.5,
              ),
              SizedBox(height: 16),
              Text(
                currentMenuInfo.title,
                style: TextStyle(fontFamily: 'avenir', color: CustomColors.primaryTextColor, fontSize: 14),
              ),
            ],
          ),
        );
      },
    );
  }
}