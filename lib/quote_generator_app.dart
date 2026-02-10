import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/localization/app_translations.dart';
import 'package:quote_generator_mobile_app/core/routing/app_router.dart';
import 'package:quote_generator_mobile_app/core/routing/routes.dart';
import 'package:quote_generator_mobile_app/core/services/settings_service.dart';
import 'package:quote_generator_mobile_app/core/theming/app_theme.dart';

class QuoteGeneratorApp extends StatelessWidget {
  const QuoteGeneratorApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    final settingsService = Get.find<SettingsService>();

    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      child: GetMaterialApp(
        title: 'Quote Generator',
        debugShowCheckedModeBanner: false,
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('en'),
        translations: AppTranslations(),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: settingsService.isDarkMode.value
            ? ThemeMode.dark
            : ThemeMode.light,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
