import 'package:finance_ui/Features/Auth/login_screen.dart';
import 'package:finance_ui/Features/Auth/register_screen.dart';
import 'package:finance_ui/Features/ForgetPassword/forget_screen.dart';
import 'package:finance_ui/Features/OnBoarding/on_boarding_screen.dart';
import 'package:finance_ui/Routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouts {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

        case Routes.forgotPassScreen:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());



      default:
        return null;
    }
  }
}
