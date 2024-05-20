import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:translation_string/src/resources.dart';
import 'package:translation_string/utils/translations_data.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getLocalTranslation();
  }

  void getLocalTranslation() async {
    Map<String, dynamic> data = {};
    var input = await rootBundle.loadString(R.translations.id);

    data = jsonDecode(input);
    data.forEach((key, value) {
      TranslationsData.translationsData.translation[key] = value.toString();
    });

    R();
  }
}
