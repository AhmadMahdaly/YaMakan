import 'package:flutter/material.dart';
import 'package:yamakan/core/cache_helper/cache_helper.dart';
import 'package:yamakan/core/cache_helper/cache_values.dart';

class LocaleController extends ChangeNotifier {
  LocaleController() {
    final selectedLocale = CacheHelper.get<String>(CacheKeys.currentLanguage);
    if (selectedLocale != null) {
      _locale = Locale(selectedLocale);
    }
  }

  Locale? _locale;

  Locale? get locale => _locale;

  Future<void> set(Locale locale) async {
    _locale = locale;

    await CacheHelper.set(
      CacheKeys.currentLanguage,
      locale.languageCode,
    );

    notifyListeners();
  }
}
