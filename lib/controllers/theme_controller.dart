import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/configs/themes/app_darl_themes.dart';
import 'package:get/get.dart';

import '../configs/themes/app_light_theme.dart';
class ThemeController extends GetxController{
  late ThemeData _lightTheme;
  late ThemeData _darkTheme;
  @override
  void onInit(){
    initializedThemeData();
    super.onInit();
  }

  void initializedThemeData() {
    _lightTheme=LightTheme().buildLightTheme();
    _darkTheme=DarkTheme().buildDarkTheme();

  }
  ThemeData get darkTheme=>_darkTheme;
  ThemeData get lightTheme=>_lightTheme;
}