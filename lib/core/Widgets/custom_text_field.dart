import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';

class CustomTextField extends StatelessWidget {
   final String? hintTex;
   final Icon? suffixIcon;
   final double? width;
   final bool?  isPassword;
  const CustomTextField({super.key, this.hintTex, this.suffixIcon, this.width, this.isPassword});
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextField(
        autofocus: false,
        cursorColor: AppColors.primaryColor,
        obscureText: isPassword ?? false,
      decoration: InputDecoration(
        
        filled: true,
        fillColor: Color(0xffF7F8F9),
        hintText: hintTex,
        hintStyle: TextStyle(color: Color(0xff8391A1), fontSize: 15.sp,fontWeight: FontWeight.w400),
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 18.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Color(0xffE8ECF4), width: 2.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2.w),
        )
      ),
      ),
    );
  }
}