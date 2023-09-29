import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../local_storage/export_local_storage.dart';

class LocalizationController extends GetxController {
  Locale appLocale = const Locale('en');
  String groupValue = "en";

  @override
  void onInit() async {
    super.onInit();
    final cachedLanguageCode = AppLocalizationLocalStorage.getCachedLanguage();
    appLocale = Locale(cachedLanguageCode);
    Get.updateLocale(appLocale);
  }

  void changeLanguage(String languageCode) async {
    appLocale = Locale(languageCode);
    await AppLocalizationLocalStorage.cacheLanguage(languageCode);
    await Get.updateLocale(appLocale);
    update();
  }

  void updateValue(String language) async {
    changeLanguage(language);
    groupValue = language;
    update();
  }
}
