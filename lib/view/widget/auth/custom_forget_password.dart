import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.forgetPassword);
      },
      child: Text(
        "Forget Password",
        textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
