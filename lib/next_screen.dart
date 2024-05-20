import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_string/language_controller.dart';

import 'src/resources.dart';

class NextScreen extends StatelessWidget {
  NextScreen({
    super.key,
  }) : _controller = Get.put(ChangeLanguageController());

  final ChangeLanguageController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Text(R.strings.tChangeLanguange),
            FilledButton(
              onPressed: () {
                _controller.changeLaguage('id');
              },
              child: const Text('Indonesia'),
            ),
            FilledButton(
              onPressed: () {
                _controller.changeLaguage('en');
              },
              child: const Text('English'),
            )
          ],
        )),
      ),
    );
  }
}
