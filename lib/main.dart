import 'package:ecommerce_app/core/constant/App_color.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/auth/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: localeController.language,
      home: LanguageScreen(),
      routes: routes,
      translations: AppTranslation(),
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          headlineSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          bodyMedium: TextStyle(
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          bodySmall: TextStyle(
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
