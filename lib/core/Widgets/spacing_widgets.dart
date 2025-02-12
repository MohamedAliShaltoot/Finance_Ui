import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthSpacing extends StatelessWidget {
  final double? width;
  const WidthSpacing({super.key,  this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width!.w ,
    );
  }
}


class HeightSpacing extends StatelessWidget {
  final double? height;
  const HeightSpacing({super.key,  this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height:height!.h,
    );
  }
}