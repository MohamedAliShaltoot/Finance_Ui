
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle primaryHeadLineTextStyle = TextStyle(
      fontFamily: AppFonts.fontFamilyName,
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor);

  static TextStyle subTitleTextStyle = TextStyle(
      fontFamily: AppFonts.fontFamilyName,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryColor);

  static TextStyle black16w500Style = TextStyle(
      fontFamily: AppFonts.fontFamilyName,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor);

  static TextStyle gray12wMediumStyle = TextStyle(
      fontFamily: AppFonts.fontFamilyName,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.grayColor);
}
