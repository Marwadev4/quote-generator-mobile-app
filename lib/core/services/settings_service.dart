import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class SettingsService extends GetxService {
  late final GetStorage _storage;

  static const String _languageKey = 'language';
  static const String _themeKey = 'theme';

  @override
  void onInit() {
    super.onInit();
    _storage = GetStorage();
  }

  // Language management
  RxString currentLanguage = 'en'.obs;

  Future<void> setLanguage(String languageCode) async {
    currentLanguage.value = languageCode;
    await _storage.write(_languageKey, languageCode);
    Get.updateLocale(Locale(languageCode));
  }

  Future<void> loadLanguage() async {
    final savedLanguage = _storage.read(_languageKey) ?? 'en';
    currentLanguage.value = savedLanguage;
    Get.updateLocale(Locale(savedLanguage));
  }

  // Theme management
  RxBool isDarkMode = false.obs;

  Future<void> setTheme(bool isDark) async {
    isDarkMode.value = isDark;
    await _storage.write(_themeKey, isDark);
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> loadTheme() async {
    final savedTheme = _storage.read(_themeKey) ?? false;
    isDarkMode.value = savedTheme;
    Get.changeThemeMode(savedTheme ? ThemeMode.dark : ThemeMode.light);
  }

  // Initialize all settings
  Future<void> initializeSettings() async {
    await loadLanguage();
    await loadTheme();
  }
}
