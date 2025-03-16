import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LocaleController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Language ",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CustomButton(
              title: 'Ar',
              onTap: () {
                Get.toNamed(AppRoutes.onBoarding);
                controller.changeLang('ar');
              },
            ),
            CustomButton(
              title: 'En',
              onTap: () {
                controller.changeLang('en');
                Get.toNamed(AppRoutes.onBoarding);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
