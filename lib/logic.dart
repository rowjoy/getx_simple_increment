import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logicfile extends GetxController {
  RxInt count = 0.obs;
  var thememode = false;

  increment() {
    count++;
  }

  changeThemes(value1) {
    if (value1 == true) {
      thememode = true;
      Get.changeThemeMode(ThemeMode.light);
    } else {
      thememode = false;
      Get.changeThemeMode(ThemeMode.dark);
    }
    update();
  }
}
