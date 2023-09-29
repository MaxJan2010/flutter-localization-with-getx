// ignore_for_file: avoid_classes_with_only_static_members
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocalizationLocalStorage {
  static late SharedPreferences transLocalStorageBox ;

  static Future<void> init() async {
    transLocalStorageBox  = await SharedPreferences.getInstance();
  }

  static const String _langCodeKey = "lang_code";

  static String getCachedLanguage() {
    final code = transLocalStorageBox .getString(_langCodeKey);
    if (code != null) {
      return code;
    } else {
      //return device Locale
      return Get.deviceLocale != null ? Get.deviceLocale!.languageCode : 'en';
    }
  }

  static Future<void> cacheLanguage(String code) async {
    await transLocalStorageBox .setString(_langCodeKey, code);
  }
}
