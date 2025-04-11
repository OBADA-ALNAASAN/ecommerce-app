import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AbsLoginController extends GetxController {
  login();
  goToSignUp();
}

class LoginController extends AbsLoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signUp);
  }

  @override
  login() {}
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
