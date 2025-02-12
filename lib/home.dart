
import 'package:finance_ui/core/Widgets/custom_text_field.dart';
import 'package:finance_ui/core/Widgets/outlined_primary_button.dart';

import 'package:finance_ui/core/utils/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:OutlinedPrimaryButton(
              onPressed: () {},
              buttonName: "Login",
              
              
            ),

          
            
          ),
          SizedBox(height: 20.h,),

          CustomTextField(
            hintTex: "Email",),
 SizedBox(height: 10.h,),

             CustomTextField(
            hintTex: "Password",
            isPassword: true,
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: AppColors.primaryColor,
            ),
            ),


        ],
      ),
    );
  }
}