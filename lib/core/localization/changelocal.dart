import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  AppServices appServices = Get.find();
  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    appServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = appServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == 'ar') {
      language = Locale('ar');
    } else if (sharedPrefLang == 'en') {
      language = Locale('ar');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
