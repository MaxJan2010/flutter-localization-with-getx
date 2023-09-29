import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/export_controllers.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {super.key, required this.value, required this.title});
  final String value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
      init: LocalizationController(),
      builder: (controller) {
        return RadioListTile(
          title: Text(title.tr),
          value: value,
          groupValue: controller.groupValue,
          activeColor: Colors.amber,
          onChanged: (value) {
            controller.updateValue(value.toString());
          },
        );
      },
    );
  }
}
