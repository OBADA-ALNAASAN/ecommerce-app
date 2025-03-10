import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AbsOnbordinController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnbordingController extends AbsOnbordinController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
