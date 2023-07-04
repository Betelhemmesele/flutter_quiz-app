
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/configs/themes/app_darl_themes.dart';
import 'package:flutter_quiz_app/configs/themes/app_light_theme.dart';
import 'package:flutter_quiz_app/configs/themes/ui_parameters.dart';
const Color onSurfaceTextColor=Colors.white;
const mainGradientLight=LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryColorLight,
      primaryLightColorLight
    ]
);
const mainGradientDark=LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryColorDark,
      primaryDarkColorDark
    ]
);
LinearGradient mainGradient(BuildContext context)=>
   UIParameters.isDarkMode(context)?mainGradientDark:mainGradientLight;
