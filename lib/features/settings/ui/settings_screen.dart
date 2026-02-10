import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/helpers/extensions.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_button.dart';
import 'package:quote_generator_mobile_app/features/settings/logic/settings_controller.dart';
import 'package:quote_generator_mobile_app/features/settings/ui/widgets/settings_section.dart';
import 'package:quote_generator_mobile_app/features/settings/ui/widgets/language_option.dart';
import 'package:quote_generator_mobile_app/features/settings/ui/widgets/theme_option.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    final controller = Get.find<SettingsController>();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDarkMode
                ? [DarkColors.primary, DarkColors.primaryVariant]
                : [LightColors.primary, LightColors.primaryVariant],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                AppButton(
                  borderColor: isDarkMode
                      ? DarkColors.primarySoft
                      : LightColors.primarySoft,
                  borderRadius: BorderRadius.circular(6.r),
                  backgroundColor: isDarkMode
                      ? DarkColors.primarySoft
                      : LightColors.primarySoft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: isDarkMode ? DarkColors.icon : LightColors.icon,
                        size: 25.sp,
                      ),
                      Text(
                        'back_to_home'.tr,
                        style: TextStyles.font26VeryDarkGray.copyWith(
                          color: isDarkMode
                              ? DarkColors.icon
                              : LightColors.icon,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {
                    context.pop();
                  },
                ),
                verticalSpace(30),

                // Settings Title
                Text(
                  'settings_title'.tr,
                  style: TextStyles.font22White.copyWith(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(30),

                // Language Section
                SettingsSection(
                  title: 'language'.tr,
                  icon: Icons.language,
                  isDarkMode: isDarkMode,
                  child: Obx(
                    () => Column(
                      children: controller.languages.map((language) {
                        final isSelected =
                            controller.currentLanguage == language['code'];
                        return LanguageOption(
                          language: language,
                          isSelected: isSelected,
                          onTap: () =>
                              controller.changeLanguage(language['code']!),
                          isDarkMode: isDarkMode,
                        );
                      }).toList(),
                    ),
                  ),
                ),

                verticalSpace(20),

                // Theme Section
                SettingsSection(
                  title: 'theme'.tr,
                  icon: Icons.palette,
                  isDarkMode: isDarkMode,
                  child: Obx(
                    () => Column(
                      children: [
                        ThemeOption(
                          title: 'light_mode'.tr,
                          icon: Icons.light_mode,
                          isSelected: !controller.isDarkMode,
                          onTap: () => controller.setTheme(false),
                          isDarkMode: isDarkMode,
                        ),
                        ThemeOption(
                          title: 'dark_mode'.tr,
                          icon: Icons.dark_mode,
                          isSelected: controller.isDarkMode,
                          onTap: () => controller.setTheme(true),
                          isDarkMode: isDarkMode,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
