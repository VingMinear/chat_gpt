import 'package:chat_gpt/constant/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../constant/app_color.dart';

class AppTheme {
  //-------------------------------DarkTheme-------------------------------//
  static ThemeData darkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.primaryDarkColor,
      fontFamily: 'DMSans',
      primaryColor: AppColor.primaryDarkColor,
      highlightColor: AppColor.textFieldDarkColor,
      iconTheme: const IconThemeData(
        color: AppColor.iconDarkColor,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        titleTextStyle: AppTextStyle.txt17,
        backgroundColor: AppColor.mainColor,
      ),
    );
  }

  //-------------------------------LightTheme-------------------------------//
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: 'DMSans',
      scaffoldBackgroundColor: AppColor.primaryLightColor,
      primaryColor: AppColor.primaryLightColor,
      highlightColor: AppColor.textFieldLightColor,
      iconTheme: const IconThemeData(
        color: AppColor.iconLightColor,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        titleTextStyle: AppTextStyle.txt17,
        backgroundColor: AppColor.mainColor,
      ),
    );
  }
}
