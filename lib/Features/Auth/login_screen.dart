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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailCOntroller;
  late TextEditingController passwordCOntroller;

  @override
  void initState() {
    super.initState();
    emailCOntroller = TextEditingController();
    passwordCOntroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                      Constants.loginWelcomeTitle,
                      style: AppStyle.primaryHeadLineTextStyle,
                    ),
                  ),
                  HeightSpacing(
                    height: 32,
                  ),
                  CustomTextField(
                    controller: emailCOntroller,
                    hintTex: "Enter your Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your emali";
                      } else {
                        return null;
                      }
                    },
                  ),
                  HeightSpacing(
                    height: 16,
                  ),
                  CustomTextField(
                    controller: passwordCOntroller,
                    hintTex: "Enter your Password",
                    isPassword: true,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.grayColor,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      } else if (value.length < 6) {
                        return " Password should be grater than 6 characters";
                      } else {
                        return null;
                      }
                    },
                  ),
                  HeightSpacing(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                         Navigator.pushNamed(context, Routes.forgotPassScreen);
                      
                      },
                      child: Text(
                        Constants.forgotPasswordTitle,
                        style: TextStyle(
                            color: Color(0xff6A707C), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  HeightSpacing(
                    height: 30,
                  ),
                  CustomPrimaryButton(
                    width: 331.w,
                    height: 56.h,
                    buttonName: "Login",
                    buttonBackgroundColor: AppColors.primaryColor,
                    textButtonColor: Colors.white,
                    onPressed: () {
                      if(formKey.currentState!.validate()){
            
                      }
                    },
                  ),
                  HeightSpacing(
                    height: 35,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 111.w,
                        child: Divider(),
                      ),
                      WidthSpacing(
                        width: 12,
                      ),
                      Text("Or Login With "),
                      WidthSpacing(
                        width: 12,
                      ),
                      SizedBox(
                        width: 111.w,
                        child: Divider(),
                      ),
                    ],
                  ),
                  HeightSpacing(
                    height: 22,
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
                    height: 105,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
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
                          " Register Now",
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
      ),
    );
  }
}
