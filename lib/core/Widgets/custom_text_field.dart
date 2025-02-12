import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomTextField extends StatelessWidget {
   final String? hintTex;
   final Icon? suffixIcon;
   final double? width;
   final bool?  isPassword;
   final String? Function(String?)? validator;
   final TextEditingController? controller;
  const CustomTextField({super.key, this.hintTex, this.suffixIcon, this.width, this.isPassword, this.validator, this.controller});
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextFormField(
        controller: controller,
        validator:validator ,
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
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 2.w),
        ), 
        focusedErrorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 2.w),
        ), 
      ),
      ),
    );
  }
}