import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerIcons extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  const CustomContainerIcons({super.key, required this.imagePath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
                    onTap:onPressed,
                    child: Container(
                      height: 59.h,
                      width: 105.w,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(
                            color: AppColors.blackColor,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(
                          imagePath,
                          width: 12.w,
                          height: 24,
                        ),
                      ),
                    ),
                  );
  }
}