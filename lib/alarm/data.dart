// ignore_for_file: prefer_const_constructors

//import 'package:proojecttt/alarm/constans/theme_data.dart';
// import 'package:proojecttt/alarm/enums.dart';
// import 'package:proojecttt/alarm/models/alarm_info.dart';
// import 'package:proojecttt/alarm/models/menu_info.dart';
import 'package:untitled/alarm/constans/theme_data.dart';
import 'package:untitled/alarm/enums.dart';
import 'package:untitled/alarm/models/alarm_info.dart';
import 'package:untitled/alarm/models/menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock,
      title: 'Clock', imageSource: 'assets/img/clock_icon.png'),
  MenuInfo(MenuType.alarm,
      title: 'Alarm', imageSource: 'assets/img/alarm_icon.png'),
  // MenuInfo(MenuType.stopwatch,
  //  title: 'Stopwatch', imageSource: 'assets/stopwatch_icon.png'),
  // MenuInfo(MenuType.timer,
  //  title: 'Timer', imageSource: 'assets/timer_icon.png'),
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      description: 'Office', gradientColors: GradientColors.sky),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)),
      description: 'Sport', gradientColors: GradientColors.sunset),
];
