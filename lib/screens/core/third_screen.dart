import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../controllers/export_controllers.dart';

class MySelectLangsScreen extends StatelessWidget {
  const MySelectLangsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // LocalizationController myLocalizationController = Get.find();
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
/*                   ElevatedButton(
                      onPressed: myLocalizationController.changeLanguage('ar'),
                      child: const Text("Navigate to next screen")), */
                ])));
  }
}
