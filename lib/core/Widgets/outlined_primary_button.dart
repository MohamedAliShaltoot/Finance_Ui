import 'package:finance_ui/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedPrimaryButton extends StatelessWidget {
  final String? buttonName;
  final Color? buttonBorderColor;
  final double? width, height;
  final double? borderButtonRadius;
  final Color? textButtonColor;
  final VoidCallback? onPressed;
  final double? fontSize;

  const OutlinedPrimaryButton(
      {super.key,
       this.buttonName,
       this.buttonBorderColor,
       this.width,
       this.height,
       this.borderButtonRadius,
       this.textButtonColor, this.onPressed, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
         
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderButtonRadius ?? 8.r),
            side: BorderSide(color:buttonBorderColor?? AppColors.primaryColor,width: 2.w),
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
