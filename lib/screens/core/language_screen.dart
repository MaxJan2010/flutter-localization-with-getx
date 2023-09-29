import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/export_controllers.dart';
import '../../widgets/export_widgets.dart';


class MySelectLanguageScreen extends StatelessWidget {
  const MySelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<LocalizationController>(
          init: LocalizationController(),
          builder: (controller) {
            return Text('home'.tr);
          },
        )

      ),
      body:
      GetBuilder<LocalizationController>(
        init: LocalizationController(),
        builder: (controller) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomRadioButton(value: "en", title: 'Language_English'.tr,),
                CustomRadioButton(value: "ar", title: 'Language_Arabic'.tr,),
                Text(
                  "name".tr,
                  textScaleFactor: 3,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
