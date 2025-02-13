import 'package:finance_ui/Routing/routes.dart';
import 'package:finance_ui/core/Widgets/primary_button_widget.dart';
import 'package:finance_ui/core/Widgets/spacing_widgets.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_style.dart';
import 'package:finance_ui/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerficationScreen extends StatelessWidget {
  const OtpVerficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Constants.oTPVerificationTitle,
                style: AppStyle.primaryHeadLineTextStyle,
              ),
            ),
            HeightSpacing(
              height: 10,
            ),
            SizedBox(
              width: 288.w,
              child: Text(
                Constants.oTPVerificationSubTitle,
                style: AppStyle.subTitleTextStyle,
              ),
            ),
            HeightSpacing(
              height: 32,
            ),
            PinCodeTextField(
              appContext: context,
              enableActiveFill: true,
              keyboardType: TextInputType.number,
              textStyle:
                  AppStyle.primaryHeadLineTextStyle.copyWith(fontSize: 22.sp),
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 70.h,
                fieldWidth: 60.w,
                //activeFillColor: AppColors.blackColor,
                activeColor: AppColors.primaryColor,
                activeFillColor: AppColors.whiteColor,
                selectedColor: AppColors.primaryColor,
                selectedFillColor: AppColors.whiteColor,
                inactiveColor: AppColors.grayColor,
                inactiveFillColor: AppColors.whiteColor,
              ),
              onChanged: (value) {
                print("value $value");
              },
              onCompleted: (value) {
                Navigator.pushNamed(context, Routes.onBordingScreen);
              },
            ),
            HeightSpacing(
              height: 32,
            ),
            CustomPrimaryButton(
              buttonName: "Verfiy",
              onPressed: () {},
            ),
             HeightSpacing(
                height: 60,
              ),
Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t recieved code?",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.registerScreen);
                        },
                        child: Text(
                          " Resend",
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
      


    );
  }
}
