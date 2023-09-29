import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/export_controllers.dart';

class LocalizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocalizationController(), fenix: true);
  }
}

// Remove
const languagesList = [
  {'name': 'English', 'locale': Locale('en', 'US')},
  {'name': 'Arabic', 'locale': Locale('ar', 'SA')}
];

// Remove
showLocalizationDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: const Text("Choose Your Language"),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(languagesList[index]['name'] as String),
                        ),
                        onTap: () => {},
                      ),
                  separatorBuilder: ((context, index) => const Divider(
                        color: Colors.black,
                      )),
                  itemCount: 2),
            ),
          ));
}
