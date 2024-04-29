import 'package:flutter/material.dart';

class AlarmInfo {
  DateTime alarmDateTime;
  String description;
  List<Color> gradientColors;

  AlarmInfo(this.alarmDateTime, {required this.description, required this.gradientColors});
}
