import 'package:finance_ui/Routing/routes.dart';
import 'package:finance_ui/core/Widgets/outlined_primary_button.dart';
import 'package:finance_ui/core/Widgets/primary_button_widget.dart';
import 'package:finance_ui/core/Widgets/spacing_widgets.dart';
import 'package:finance_ui/core/utils/app_assets.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoardImage1,
            height: 570.h,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          HeightSpacing(height: 21.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: CustomPrimaryButton(
              width: 331.w,
              height: 56.h,
              buttonName: "Login",
              buttonBackgroundColor: AppColors.primaryColor,
              textButtonColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context,Routes.loginScreen);
              },
            ),
          ),
          HeightSpacing(height: 15.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: OutlinedPrimaryButton(
              width: 331.w,
              height: 56.h,
              buttonName: "Register",
              buttonBorderColor: AppColors.whiteColor,
              textButtonColor: AppColors.primaryColor,
              onPressed: () {
                Navigator.pushNamed(context,Routes.registerScreen);
              },
            ),
          ),
          HeightSpacing(height: 46.h),
          Text(
            Constants.guestTiltle,
            style: TextStyle(
              decoration: TextDecoration.underline,
                color: AppColors.guestTitleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
           
          )
        ],
      ),
    );
  }
}