import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AbsForgetpasswordController extends GetxController {
  goToVerfiycode();
  checkEmail();
}

class ForgetpasswordController extends AbsForgetpasswordController {
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

  @override
  goToVerfiycode() {
    Get.toNamed(AppRoutes.verfiycode);
  }
  
  @override
  checkEmail() {
   
  }
}
