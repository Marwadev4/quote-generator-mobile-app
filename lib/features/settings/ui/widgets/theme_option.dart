import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';

class ThemeOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isDarkMode;

  const ThemeOption({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: isSelected 
                ? (isDarkMode ? DarkColors.primaryVariant : LightColors.primaryVariant)
                : Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: isSelected
                  ? (isDarkMode ? DarkColors.primaryVariant : LightColors.primaryVariant)
                  : (isDarkMode ? DarkColors.primarySoft : LightColors.primarySoft),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: isSelected
                        ? Colors.white
                        : (isDarkMode ? DarkColors.primaryVariant : LightColors.primaryVariant),
                    size: 20.sp,
                  ),
                  horizontalSpace(12),
                  Text(
                    title,
                    style: TextStyles.font22VeryDarkGray.copyWith(
                      fontSize: 16.sp,
                      color: isSelected
                          ? Colors.white
                          : (isDarkMode ? DarkColors.textPrimary : LightColors.textPrimary),
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
              if (isSelected)
                Icon(Icons.check, color: Colors.white, size: 20.sp),
            ],
          ),
        ),
      ),
    );
  }
}
