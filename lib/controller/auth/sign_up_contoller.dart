import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AbsSignUpContoller extends GetxController {
  goToLogin();
}

class SignUpContoller extends AbsSignUpContoller {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
