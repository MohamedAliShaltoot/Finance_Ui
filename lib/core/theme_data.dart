import 'package:finance_ui/core/app_colors.dart';
import 'package:finance_ui/core/app_fonts.dart';
import 'package:finance_ui/core/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme 
{
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.primaryColor,
   fontFamily: AppFonts.fontFamilyName,
   textTheme:  TextTheme(
     titleLarge: AppStyle.primaryHeadLineTextStyle,
     titleMedium: AppStyle.subTitleTextStyle,

   ),

   buttonTheme: ButtonThemeData(
     buttonColor: AppColors.primaryColor,
     //textTheme: ButtonTextTheme.primary,
     disabledColor: AppColors.secondaryColor
   ),
   
  );


}