class TranslationsData {
  factory TranslationsData() {
    return translationsData;
  }
  TranslationsData._internal();

  static final TranslationsData translationsData = TranslationsData._internal();

  Map<dynamic, dynamic> translation = {};
}
