import 'package:get/get.dart';
import 'package:translation_string/utils/utils.dart';

class ChangeLanguageController extends GetxController {
  //call change languange
  void changeLaguage(String locale) {
    Utils.changeLaguage(locale: locale);
  }
}
