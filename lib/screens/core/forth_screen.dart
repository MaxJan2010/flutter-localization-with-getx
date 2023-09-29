import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/export_controllers.dart';
import '../../widgets/export_widgets.dart';


class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        // actions: [
        //   GetBuilder<AppLanguage>(
        //   init: AppLanguage(),
        //     builder: (controller) {
        //       return Row(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           const Text(
        //             "EN",
        //           ),
        //           Switch(
        //             activeColor: Colors.amber,
        //             value: controller.appLocale.languageCode == "ar",
        //             onChanged: (value) {
        //               if (value) {
        //                 controller.changeLanguage("ar");
        //               } else {
        //                 controller.changeLanguage("en");
        //               }
        //             },
        //           ),
        //           const Text(
        //             "AR",
        //           ),
        //         ],
        //       );
        //     },
        //   ),
        // ],
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
                const CustomRadioButton(value: "en", title: 'english',),
                const CustomRadioButton(value: "ar", title: 'arabic',),
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
