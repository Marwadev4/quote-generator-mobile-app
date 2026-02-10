import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/services/settings_service.dart';

class SettingsController extends GetxController {
  final SettingsService _settingsService = Get.find<SettingsService>();

  // Language options
  final List<Map<String, String>> languages = [
    {'code': 'en', 'name': 'English', 'nativeName': 'English'},
    {'code': 'ar', 'name': 'Arabic', 'nativeName': 'العربية'},
  ];

  // Getters
  String get currentLanguage => _settingsService.currentLanguage.value;
  bool get isDarkMode => _settingsService.isDarkMode.value;

  // Language methods
  void changeLanguage(String languageCode) {
    _settingsService.setLanguage(languageCode);
  }

  String getLanguageName(String code) {
    final language = languages.firstWhere(
      (lang) => lang['code'] == code,
      orElse: () => languages[0],
    );
    return language['nativeName'] ?? language['name'] ?? 'English';
  }

  // Theme methods
  void toggleTheme() {
    _settingsService.setTheme(!isDarkMode);
  }

  void setTheme(bool isDark) {
    _settingsService.setTheme(isDark);
  }

  @override
  void onInit() {
    super.onInit();
    // Ensure settings are loaded
    ever(_settingsService.currentLanguage, (_) => update());
    ever(_settingsService.isDarkMode, (_) => update());
  }
}
