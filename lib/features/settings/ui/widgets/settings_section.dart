import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;
  final bool isDarkMode;

  const SettingsSection({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (isDarkMode ? DarkColors.background : LightColors.background)
            .withOpacity(0.9),
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: isDarkMode ? DarkColors.primaryVariant : LightColors.primaryVariant, size: 24.sp),
              horizontalSpace(8),
              Text(
                title,
                style: TextStyles.font22VeryDarkGray.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          verticalSpace(12),
          child,
        ],
      ),
    );
  }
}
