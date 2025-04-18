import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:ecommerce_app/view/screen/auth/forget_password_screen.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/auth/sign_up_screen.dart';
import 'package:ecommerce_app/view/screen/on_boarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login:(context)=>LoginScreen(),
  AppRoutes.signUp:(context)=>SignUpScreen(),
  AppRoutes.onBoarding:(context)=>OnBoardingScreen(),
  AppRoutes.forgetPassword:(context)=>ForgetPasswordScreen(),
};
