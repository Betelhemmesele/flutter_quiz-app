import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/configs/themes/app_theme_data_mixin.dart';

const Color primaryColorLight=Color(0xFFf85187);
const Color primaryLightColorLight=Color(0xFF3ac3cb);
const Color mainTextColor=Colors.black;
class LightTheme with SubThemeData{
  buildLightTheme(){
    final ThemeData systemLightTheme=ThemeData.light();
    return systemLightTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemes().apply(bodyColor: mainTextColor,displayColor: mainTextColor)
    );
  }
}