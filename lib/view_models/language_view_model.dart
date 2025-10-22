import 'package:beauty_near_sp/services/locator.dart';
import 'package:beauty_near_sp/services/storage_service.dart';
import 'package:flutter/material.dart';

class LanguageViewModel extends ChangeNotifier {
  Locale currentLocale = const Locale('en');

  Future<void> fetchInitialLocale() async {
    final savedLocale = locator<StorageService>().locale;
    if (savedLocale != null) {
      currentLocale = savedLocale;
      notifyListeners();
    }
  }

  Future<void> changeLocale(Locale newLocale) async {
    currentLocale = newLocale;
    notifyListeners();
    await locator<StorageService>().saveLocale(newLocale);
  }
}