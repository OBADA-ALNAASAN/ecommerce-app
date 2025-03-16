import 'package:ecommerce_app/controller/onbordin_controller.dart';
import 'package:ecommerce_app/view/widget/onboarding/custombotton.dart';
import 'package:ecommerce_app/view/widget/onboarding/customslider.dart';
import 'package:ecommerce_app/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Expanded(flex: 2, child: CustomSlider()),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Dotcontroller(),
                    Spacer(
                      flex: 2,
                    ),
                    CustombottonOboarding(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
