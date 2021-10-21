import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

DevanshProfileController devanshProfileController =
DevanshProfileController();

class DevanshProfileController extends GetxController {
  RxBool isDark = false.obs;

  Rx<Color> appBarColor = const Color(0xffF8E2CF).obs;
  Rx<Color> backgroundColor = const Color(0xffFDF6F0).obs;
  Rx<Color> textColor = const Color(0xff000000).obs;

  void setTheme() {
    appBarColor.value =
        isDark.value ? const Color(0xff082032) : const Color(0xffF8E2CF);
    backgroundColor.value =
        isDark.value ? const Color(0xff2C394B) : const Color(0xffFDF6F0);
    textColor.value =
        isDark.value ? const Color(0xfff3f3f3) : const Color(0xff000000);
  }
}
