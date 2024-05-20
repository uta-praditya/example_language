import 'package:translation_string/src/strings.dart';
import 'package:translation_string/src/translations.dart';

class R {
  factory R() {
    return resource;
  }
  R._internal();

  static R resource = R._internal();

  static final translations = Translations();
  static var strings = AppStrings();
}
