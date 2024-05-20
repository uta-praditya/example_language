import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:restart_app/restart_app.dart';
import 'package:translation_string/src/resources.dart';
import 'package:translation_string/src/strings.dart';
import 'package:translation_string/utils/translations_data.dart';

class Utils {
  static changeLaguage({
    required String locale,
  }) async {
    Get.updateLocale(Locale(locale));

    try {
      Map<String, dynamic> data = {};
      var input = locale == 'id'
          ? await rootBundle.loadString(R.translations.id)
          : await rootBundle.loadString(R.translations.en);

      data = jsonDecode(input);
      data.forEach((key, value) {
        TranslationsData.translationsData.translation[key] = value.toString();
      });

      R.strings = AppStrings();
    } catch (_) {
      Restart.restartApp();
    }
  }
}
