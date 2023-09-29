import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  String country = 'country';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Text(
            'Choose Your Language',
            style: TextStyle(fontSize: 30),
          ),
          Row(
            children: [
              const Text('USA'),
              Radio(
                  value: 'en',
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value!;
                      if (kDebugMode) {
                        print(country);
                      }
                    });
                  })
            ],
          ),
          Row(
            children: [
              const Text('EGYPT'),
              Radio(
                  value: 'ar',
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value!;
                      if (kDebugMode) {
                        print(country);
                      }
                    });
                  })
            ],
          ),
          Row(
            children: [
              const Text('India'),
              Radio(
                  value: 'in',
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value!;
                      if (kDebugMode) {
                        print(country);
                      }
                    });
                  })
            ],
          ),
        ]),
      ),
    );
  }
}
