import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_string/main_controller.dart';
import 'package:translation_string/next_screen.dart';
import 'package:translation_string/src/resources.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({
    super.key,
  }) : _controller = Get.put(MainController());

  final MainController _controller;

  @override
  Widget build(BuildContext context) {
    _controller.onInit();
    return GetMaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(R.strings.tHelloWorld),
              FilledButton(
                onPressed: () {
                  Get.to(() => NextScreen());
                },
                child: Text(R.strings.tNextScreen),
              ),
              const SizedBox(height: 220),
              Text(R.strings.tDummyText),
            ],
          ),
        ),
      )),
    );
  }
}
