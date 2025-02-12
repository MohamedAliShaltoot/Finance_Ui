
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String? buttonName;
  final Color? buttonBackgroundColor;
  final double? width, height;
  final double? borderButtonRadius;
  final Color? textButtonColor;
  final VoidCallback? onPressed;
  final double? fontSize;

  const CustomPrimaryButton(
      {super.key,
       this.buttonName,
       this.buttonBackgroundColor,
       this.width,
       this.height,
       this.borderButtonRadius,
       this.textButtonColor, this.onPressed, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderButtonRadius ?? 8.r),
          ),
          fixedSize: Size(width ?? 331.w, height ?? 56.h),
        ),
        onPressed:onPressed,
        child: Text(
          buttonName ?? " ",
          style: TextStyle(color: textButtonColor ?? AppColors.primaryColor,fontSize: fontSize ?? 16.sp,fontWeight: FontWeight.bold),
        ),
        );
  }
}
