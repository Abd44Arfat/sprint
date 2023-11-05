import 'package:flutter/material.dart';

import 'font_manager.dart';

//put here font families
enum FontFamilies { Blinker }

TextStyle _getTextStyle(
    double fontSize, FontWeight fontWeight, Color color, FontFamilies family) {
  //switch on family and return the appropriate TextStyle
  switch (family) {
    case FontFamilies.Blinker:
      {
        return TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          fontFamily: 'Blinker',
        );
      }

  }
}

//You can put here the default family

TextStyle getExtraBoldStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.Blinker,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.extraBold, color, family);
}

TextStyle getBoldStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.Blinker,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color, family);
}

TextStyle getSemiBoldStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.Blinker,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color, family);
}

TextStyle getMediumStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.Blinker,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color, family);
}

TextStyle getRegularStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.Blinker,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color, family);
}

TextStyle getLightStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.Blinker,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color, family);
}
