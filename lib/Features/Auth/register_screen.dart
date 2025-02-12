import 'package:finance_ui/Routing/routes.dart';
import 'package:finance_ui/core/Widgets/custom_container_icons.dart';
import 'package:finance_ui/core/Widgets/custom_text_field.dart';
import 'package:finance_ui/core/Widgets/primary_button_widget.dart';
import 'package:finance_ui/core/Widgets/spacing_widgets.dart';
import 'package:finance_ui/core/utils/app_assets.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_style.dart';
import 'package:finance_ui/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
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
                  height: 20,
                ),
                SizedBox(
                  width: 288.w,
                  child: Text(
                    Constants.registerWelcomeTitle,
                    style: AppStyle.primaryHeadLineTextStyle,
                  ),
                ),
                CustomTextField(
                  hintTex: "Username",
                ),
               
                HeightSpacing(
                  height: 16,
                ),
                CustomTextField(
                  hintTex: "Email",
                ),
                
                HeightSpacing(
                  height: 16,
                ),
                CustomTextField(
                  hintTex: " Password",
                ),
            
                HeightSpacing(
                  height: 15,
                ),
                CustomTextField(
                  hintTex: "Confirm Password",
                ),
            
                HeightSpacing(
                  height: 15,
                ),
            
            
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    Constants.forgotPasswordTitle,
                    style: TextStyle(
                        color: Color(0xff6A707C), fontWeight: FontWeight.bold),
                  ),
                ),
                HeightSpacing(
                  height: 30,
                ),
                CustomPrimaryButton(
                  width: 331.w,
                  height: 56.h,
                  buttonName: "Register",
                  buttonBackgroundColor: AppColors.primaryColor,
                  textButtonColor: Colors.white,
                  onPressed: () {
                  
                  },
                ),
                HeightSpacing(
                  height: 25,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: Divider(),
                    ),
                    WidthSpacing(
                      width: 12,
                    ),
                    Text("Or Register With "),
                    WidthSpacing(
                      width: 12,
                    ),
                    SizedBox(
                      width: 100.w,
                      child: Divider(),
                    ),
                  ],
                ),
                HeightSpacing(
                  height: 20,
                ),
                Row(
                  children: [
                    CustomContainerIcons(
                      imagePath: AppAssets.facebookSvg,
                      onPressed: () {},
                    ),
                    WidthSpacing(
                      width: 8,
                    ),
                    CustomContainerIcons(
                      imagePath: AppAssets.googleSvg,
                      onPressed: () {},
                    ),
                    WidthSpacing(
                      width: 8,
                    ),
                    CustomContainerIcons(
                      imagePath: AppAssets.appleSvg,
                      onPressed: () {},
                    ),
                  ],
                ),
                HeightSpacing(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap:(){
                          Navigator.pushNamed(context,Routes.loginScreen);
                      } ,
                      child: Text(
                        " Login Now",
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
      ),
    );
  }
}
