import 'package:biocode/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight({required String fontFamily}) {
  return ThemeData(
    primaryColor: AppColors.mainBlue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: fontFamily,
    iconTheme: const IconThemeData(
      color: AppColors.gray,
    ),
      listTileTheme: const ListTileThemeData(
      textColor: AppColors.gray,
    ),
    textTheme: Typography.whiteCupertino.apply(
      bodyColor: AppColors.gray,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.moreLighterGray,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
            iconTheme: IconThemeData(color: AppColors.gray),
      titleTextStyle: TextStyle(
        color: AppColors.gray,
      ),
    ),
  );
}
