
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AbsResetpasswordController extends GetxController {
  
  resetPassword();
}

class ResetpasswordController extends AbsResetpasswordController {
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
  resetPassword() {
   
  }
}
