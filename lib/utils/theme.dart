import 'package:flutter/material.dart';

class Data {
  Data._();
  static getTheme(BuildContext context) {
    return Theme.of(context);
  }
}

class Colors {
  Colors._(); // this basically makes it so you can instantiate this class
  static const Color whiteGray = Color(0xfff9fbfd);
  static const Color whiteGray10 = Color(0x1af9fbfd);
  static const Color darkGray = Color(0xff50648c);
  static const Color mediumGray = Color(0xff869ab7);
  static const Color paleGrayLight = Color(0xffdde2ec);
  static const Color paleGray = Color(0xffdce2eb);
  static const Color red = Color(0xffff728d);
  static const Color orange = Color(0xfff5a623);
  static const Color yellow = Color(0xffeed000);
  static const Color green = Color(0xff1dd3a8);
  static const Color blue = Color(0xffafc2db);
  static const Color purple = Color(0xffb669f9);
  static const Color dodgerBlue = Color(0xff3a8bff);
  static const Color skyBlue = Color(0xff64c7ff);
  static const Color brightSkyBlue = Color(0xff00b0ff);
  static const Color greenBlue = Color(0xff24cd97);
  static const Color warmGray = Color(0xff979797);
  static const Color disabled = Color(0xffd2d2d2);
  static const Color black34 = Color(0xff222222);
  static const Color clearBlue = Color(0xff2b74fc);
  static const white = Color(0xffffffff);
  static const transparent = Color(0x00ffffff);
  static const purpleMain = Color(0xff6e5694);
// setting
  static const blue293 = Color(0xff29353b);
  static const grey666 = Color(0xff666666);
  static const greyede = Color(0xffededed);
  static const grey9cd = Color(0xffc9c9cd);
  // static const grey565 = Color(0xff656565);

  static const red63b = Color(0xffe6463b);
}
