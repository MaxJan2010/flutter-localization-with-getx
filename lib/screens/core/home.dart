import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/export_controllers.dart';
import '../export_screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home'.tr),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<LocalizationController>(
                builder: (myLocalizationController) {
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        ElevatedButton(
                            child: const Text("Navigate to next screen"),
                            onPressed: () {
                              Get.to(() => const SelectLanguageScreen());
                            }),
                        ElevatedButton(
                            child: const Text("Navigate to forth screen"),
                            onPressed: () {
                              Get.to(() => const ForthScreen());
                            }),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "EN",
                            ),
                            Switch(
                              activeColor: Colors.amber,
                              value: myLocalizationController
                                      .appLocale.languageCode ==
                                  "ar",
                              onChanged: (value) {
                                if (value) {
                                  myLocalizationController.changeLanguage("ar");
                                } else {
                                  myLocalizationController.changeLanguage("en");
                                }
                              },
                            ),
                            const Text(
                              "AR",
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              Text(
                "name".tr,
                textScaleFactor: 3,
              ),

              // RadioForm(),
            ],
          ),
        ));
  }
}
