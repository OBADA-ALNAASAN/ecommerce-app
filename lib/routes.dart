import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login:(context)=>LoginScreen(),
};
