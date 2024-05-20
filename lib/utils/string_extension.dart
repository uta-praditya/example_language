import 'package:translation_string/utils/translations_data.dart';

extension TranslateString on String {
  String toTranslate() {
    return TranslationsData.translationsData.translation[this] ?? this;
  }
}
