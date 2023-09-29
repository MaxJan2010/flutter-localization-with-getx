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
              ElevatedButton(
                  child: Text("Select_Language".tr),
                  onPressed: () {
                    Get.to(() => const MySelectLanguageScreen());
                  }),
              GetBuilder<LocalizationController>(
                builder: (myLocalizationController) {
                  return ElevatedButton(
                      child: Text("Select_Language".tr),
                      onPressed: () {
                        Get.to(() => const MySelectLanguageScreen());
                      });
                },
              ),
            ],
          ),
        ));
  }
}
