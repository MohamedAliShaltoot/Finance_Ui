import 'package:finance_ui/Routing/routes.dart';
import 'package:finance_ui/core/Widgets/custom_text_field.dart';
import 'package:finance_ui/core/Widgets/primary_button_widget.dart';
import 'package:finance_ui/core/Widgets/spacing_widgets.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_style.dart';
import 'package:finance_ui/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeightSpacing(
                height: 12,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 41.h,
                  width: 41.w,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              HeightSpacing(
                height: 28,
              ),
              SizedBox(
                width: 288.w,
                child: Text(
                  Constants.forgotPasswordTitle,
                  style: AppStyle.primaryHeadLineTextStyle,
                ),
              ),
              HeightSpacing(
                height: 10,
              ),
              SizedBox(
                width: 288.w,
                child: Text(
                  Constants.forgotPasswordSubTitle,
                  style: AppStyle.subTitleTextStyle,
                ),
              ),
              HeightSpacing(
                height: 32,
              ),
              CustomTextField(
                hintTex: "Enter your Email",
              ),
              HeightSpacing(
                height: 38,
              ),
              CustomPrimaryButton(
                width: 331.w,
                height: 56.h,
                buttonName: "Send Code ",
                buttonBackgroundColor: AppColors.primaryColor,
                textButtonColor: Colors.white,
                onPressed: () {},
              ),
              HeightSpacing(
                height: 340,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Password?",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.loginScreen);
                    },
                    child: Text(
                      " Login",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
