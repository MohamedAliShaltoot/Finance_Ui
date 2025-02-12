import 'package:finance_ui/Features/OnBoarding/on_boarding_screen.dart';
import 'package:finance_ui/Routing/app_routing.dart';

import 'package:finance_ui/core/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute:AppRouts().generateRoute,
        title: Constants.appName,
        home: child,
      ),
      child: OnBoardingScreen(),
    );
  }
}
