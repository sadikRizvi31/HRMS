import 'package:flutter/material.dart';

const COLOR_DARKGREY = Color.fromRGBO(90, 90, 90, 1.0);
const COLOR_GREY = Color.fromRGBO(192,192,192, 1.0);

const COLOR_WHITE = Colors.white;
const COLOR_BLUE = Colors.blue;
const COLOR_BLUEMASK = Colors.lightBlueAccent;

const String  profileImage = "https://pbs.twimg.com/profile_images/1485050791488483328/UNJ05AV8_400x400.jpg";

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(
      color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 26),
  headline2: TextStyle(
      color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 22),
  headline3: TextStyle(
      color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 20),
  headline4: TextStyle(
      color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 16),
  headline5: TextStyle(
      color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 14),
  headline6: TextStyle(
      color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
      color: COLOR_DARKGREY, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
  bodyText2: TextStyle(
      fontSize: 14, fontWeight: FontWeight.w800,height: 1.5),
  subtitle1:
  TextStyle(color: COLOR_DARKGREY, fontSize: 12, fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
      color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400),);

const TextTheme TEXT_THEME_SMALL = TextTheme(
    headline1: TextStyle(
        color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 22),
    headline2: TextStyle(
        color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(
        color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(
        color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(
        color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(
        color: COLOR_DARKGREY, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(
        color: COLOR_DARKGREY, fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
    TextStyle(color: COLOR_DARKGREY, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));

TextStyle textBold(Color colors,double size){
  return TextStyle(
    color: colors,
    fontSize: 25,
    fontFamily: "NeuePlak",
    fontWeight: FontWeight.w700,
  );
}

TextStyle textLight(Color colors,double size){
  return TextStyle(
    color: colors,
    fontSize: size,
    height: 1.0,
    fontFamily: "NeuePlak",
    fontWeight: FontWeight.w300,
  );
}