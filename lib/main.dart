// ignore_for_file: depend_on_referenced_packages, always_use_package_imports
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'binding/export_binding.dart';
import 'controllers/export_controllers.dart';
import 'data/languages/export_languages.dart';
import 'local_storage/export_local_storage.dart';
import 'screens/export_screens.dart';

void main() async {
  // Ensure All below Scripts Initialized before running App
  WidgetsFlutterBinding.ensureInitialized();

  // Scripts needs to be Started before Running App
  await AppLocalizationLocalStorage.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
      init: LocalizationController(),
      builder: (controller) => GetMaterialApp(
        title: "Localization With Getx",
        debugShowCheckedModeBanner: false,
        initialBinding: LocalizationBinding(),
        translations: Translation(),
        locale: controller.appLocale,
        fallbackLocale: controller.appLocale,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar'),
          Locale('en'),
        ],
        home: const HomeScreen(),
      ),
    );
  }
}
