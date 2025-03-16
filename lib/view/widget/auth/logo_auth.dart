import 'package:ecommerce_app/core/constant/app_image.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Image.asset(
        AppImage.logo,
        height: 160,
      ),
    );
  }
}
