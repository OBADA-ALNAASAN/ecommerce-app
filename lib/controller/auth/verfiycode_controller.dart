
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AbsVerfiycodeController extends GetxController {
  
  verfiyCode();
}

class VerfiycodeController extends AbsVerfiycodeController {
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
  verfiyCode() {
   
  }
}
