// ignore_for_file: unnecessary_this

import 'package:flutter/foundation.dart';
//import 'package:proojecttt/alarm/enums.dart';
import 'package:untitled/alarm/enums.dart'; // important (foundation) for the extends below it should be foundation and not othe classes

class MenuInfo extends ChangeNotifier{
  MenuType menuType;
  String title;
  String imageSource;

  MenuInfo(this.menuType, {required this.title, required this.imageSource});

  updateMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.imageSource = menuInfo.imageSource;

// important
    notifyListeners();
//whenever i update my model i have to trigger it
  }
}