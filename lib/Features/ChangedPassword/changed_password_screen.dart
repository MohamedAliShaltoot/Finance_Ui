import 'package:finance_ui/Routing/routes.dart';
import 'package:finance_ui/core/Widgets/primary_button_widget.dart';
import 'package:finance_ui/core/Widgets/spacing_widgets.dart';
import 'package:finance_ui/core/utils/app_assets.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangedPasswordScreen extends StatelessWidget {
  const ChangedPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.amberAccent,
            child: SvgPicture.asset("assets/images/Sticker.png",width: 400,height: 200,)),
           HeightSpacing(
                height: 35,
              ),

              Text("Password Changed!",style: AppStyle.primaryHeadLineTextStyle,),
               HeightSpacing(
                height: 8,
              ),
              Text("Your password has been changed successfully.",style: AppStyle.subTitleTextStyle,),
               HeightSpacing(
                height:94,
              ),
CustomPrimaryButton(
                    width: 331.w,
                    height: 56.h,
                    buttonName: "Back to Login",
                    buttonBackgroundColor: AppColors.primaryColor,
                    textButtonColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context,Routes.loginScreen);
                    },
                  ),
        ],
      ),
    );
  }
}