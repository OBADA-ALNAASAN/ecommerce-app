import 'package:ecommerce_app/controller/onbordin_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustombottonOboarding extends GetView<OnbordingController> {
  const CustombottonOboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.next();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 120,
        ),
        height: 40,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'Continue',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
