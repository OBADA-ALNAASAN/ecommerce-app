import 'package:ecommerce_app/controller/onbordin_controller.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSlider extends GetView<OnbordingController> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      clipBehavior: Clip.none,
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) {
        return Column(
          spacing: 20,
          children: [
            Text(onBoardingList[i].title!,
                style: Theme.of(context).textTheme.headlineMedium),
            Image.asset(
              onBoardingList[i].image!,
              height: 250,
              width: 200,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium)),
          ],
        );
      },
    );
  }
}
