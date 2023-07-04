import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/configs/themes/app_light_theme.dart';
import 'package:flutter_quiz_app/configs/themes/app_theme_data_mixin.dart';

const Color primaryDarkColorDark=Colors.black;
const Color primaryColorDark=Colors.grey;
const Color mainTextColorDark=Colors.white;
class DarkTheme with SubThemeData{
  ThemeData buildDarkTheme(){
    final ThemeData systemDarkTheme=ThemeData.dark();
    return systemDarkTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemes().apply(
      bodyColor: mainTextColorDark,
    displayColor: mainTextColorDark
    ));
  }
}