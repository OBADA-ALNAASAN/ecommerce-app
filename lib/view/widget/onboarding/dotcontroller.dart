import 'package:ecommerce_app/controller/onbordin_controller.dart';
import 'package:ecommerce_app/core/constant/App_color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Dotcontroller extends StatelessWidget {
  const Dotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnbordingController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: EdgeInsets.only(right: 5),
              duration: Duration(milliseconds: 900),
              height: 6,
              width: controller.currentPage == index ? 20 : 6,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      );
    });
  }
}
