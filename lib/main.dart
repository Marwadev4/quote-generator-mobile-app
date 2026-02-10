import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_generator_mobile_app/core/di/dependency_injection.dart';
import 'package:quote_generator_mobile_app/core/routing/app_router.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/quote_generator_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDi();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: LightColors.primary),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await ScreenUtil.ensureScreenSize();
  runApp(QuoteGeneratorApp(appRouter: AppRouter()));
}
