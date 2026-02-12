import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';

///quote_generator_mobile_app A custom theme extension that provides app-specific colors
/// which can be accessed via Theme.of(context).extension<AppColors>()
@immutable
class AppColors extends ThemeExtension<AppColors> {
  // Primary Colors
  final Color primary;
  final Color primaryVariant;
  final Color primarySoft;
  final Color primaryContainer;
  final Color onPrimary;

  // Background Colors
  final Color background;
  final Color surface;
  final Color surfaceVariant;
  final Color card;
  final Color onBackground;
  final Color onSurface;
  final Color onSurfaceVariant;

  // Text Colors
  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;
  final Color textOnPrimary;
  final Color textOnSecondary;

  // Status Colors
  final Color success;
  final Color warning;
  final Color error;
  final Color onError;

  // UI Colors
  final Color divider;
  final Color icon;
  final Color iconSecondary;
  final Color overlay;
  final Color shimmerBase;
  final Color shimmerHighlight;

  // Gradient Colors
  final Color gradientStart;
  final Color gradientEnd;

  const AppColors({
    required this.primary,
    required this.primaryVariant,
    required this.primarySoft,
    required this.primaryContainer,
    required this.onPrimary,
    required this.background,
    required this.surface,
    required this.surfaceVariant,
    required this.card,
    required this.onBackground,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,
    required this.textOnPrimary,
    required this.textOnSecondary,
    required this.success,
    required this.warning,
    required this.error,
    required this.onError,
    required this.divider,
    required this.icon,
    required this.iconSecondary,
    required this.overlay,
    required this.shimmerBase,
    required this.shimmerHighlight,
    required this.gradientStart,
    required this.gradientEnd,
  });

  /// Light theme colors
  static const AppColors light = AppColors(
    primary: LightColors.primary,
    primaryVariant: LightColors.primaryVariant,
    primarySoft: LightColors.primarySoft,
    primaryContainer: LightColors.primarySoft,
    onPrimary: Colors.white,
    background: LightColors.background,
    surface: LightColors.surface,
    surfaceVariant: LightColors.primarySoft,
    card: LightColors.card,
    onBackground: LightColors.textPrimary,
    onSurface: LightColors.textPrimary,
    onSurfaceVariant: LightColors.textSecondary,
    textPrimary: LightColors.textPrimary,
    textSecondary: LightColors.textSecondary,
    textDisabled: LightColors.textDisabled,
    textOnPrimary: Colors.white,
    textOnSecondary: Colors.white,
    success: Color(0xFF4CAF50),
    warning: Color(0xFFFF9800),
    error: Color(0xFFF44336),
    onError: Colors.white,
    divider: LightColors.divider,
    icon: LightColors.icon,
    iconSecondary: LightColors.textSecondary,
    overlay: LightColors.overlay,
    shimmerBase: LightColors.shimmerBase,
    shimmerHighlight: LightColors.shimmerHighlight,
    gradientStart: LightColors.primary,
    gradientEnd: LightColors.primaryVariant,
  );

  /// Dark theme colors
  static const AppColors dark = AppColors(
    primary: DarkColors.primary,
    primaryVariant: DarkColors.primaryVariant,
    primarySoft: DarkColors.primarySoft,
    primaryContainer: DarkColors.primaryVariant,
    onPrimary: Colors.white,
    background: DarkColors.background,
    surface: DarkColors.surface,
    surfaceVariant: DarkColors.primarySoft,
    card: DarkColors.card,
    onBackground: Colors.white,
    onSurface: Colors.white,
    onSurfaceVariant: DarkColors.textSecondary,
    textPrimary: DarkColors.textPrimary,
    textSecondary: DarkColors.textSecondary,
    textDisabled: DarkColors.textDisabled,
    textOnPrimary: Colors.white,
    textOnSecondary: Colors.white,
    success: Color(0xFF81C784),
    warning: Color(0xFFFFB74D),
    error: Color(0xFFE57373),
    onError: Colors.black,
    divider: DarkColors.divider,
    icon: DarkColors.icon,
    iconSecondary: DarkColors.textSecondary,
    overlay: DarkColors.overlay,
    shimmerBase: DarkColors.shimmerBase,
    shimmerHighlight: DarkColors.shimmerHighlight,
    gradientStart: DarkColors.primary,
    gradientEnd: DarkColors.primaryVariant,
  );

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primary,
    Color? primaryVariant,
    Color? primarySoft,
    Color? primaryContainer,
    Color? onPrimary,
    Color? background,
    Color? surface,
    Color? surfaceVariant,
    Color? card,
    Color? onBackground,
    Color? onSurface,
    Color? onSurfaceVariant,
    Color? textPrimary,
    Color? textSecondary,
    Color? textDisabled,
    Color? textOnPrimary,
    Color? textOnSecondary,
    Color? success,
    Color? warning,
    Color? error,
    Color? onError,
    Color? divider,
    Color? icon,
    Color? iconSecondary,
    Color? overlay,
    Color? shimmerBase,
    Color? shimmerHighlight,
    Color? gradientStart,
    Color? gradientEnd,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      primaryVariant: primaryVariant ?? this.primaryVariant,
      primarySoft: primarySoft ?? this.primarySoft,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimary: onPrimary ?? this.onPrimary,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceVariant: surfaceVariant ?? this.surfaceVariant,
      card: card ?? this.card,
      onBackground: onBackground ?? this.onBackground,
      onSurface: onSurface ?? this.onSurface,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textDisabled: textDisabled ?? this.textDisabled,
      textOnPrimary: textOnPrimary ?? this.textOnPrimary,
      textOnSecondary: textOnSecondary ?? this.textOnSecondary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      divider: divider ?? this.divider,
      icon: icon ?? this.icon,
      iconSecondary: iconSecondary ?? this.iconSecondary,
      overlay: overlay ?? this.overlay,
      shimmerBase: shimmerBase ?? this.shimmerBase,
      shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
      gradientStart: gradientStart ?? this.gradientStart,
      gradientEnd: gradientEnd ?? this.gradientEnd,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) return this;
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryVariant: Color.lerp(primaryVariant, other.primaryVariant, t)!,
      primarySoft: Color.lerp(primarySoft, other.primarySoft, t)!,
      primaryContainer: Color.lerp(
        primaryContainer,
        other.primaryContainer,
        t,
      )!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceVariant: Color.lerp(surfaceVariant, other.surfaceVariant, t)!,
      card: Color.lerp(card, other.card, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onSurfaceVariant: Color.lerp(
        onSurfaceVariant,
        other.onSurfaceVariant,
        t,
      )!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t)!,
      textOnSecondary: Color.lerp(textOnSecondary, other.textOnSecondary, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      icon: Color.lerp(icon, other.icon, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
      overlay: Color.lerp(overlay, other.overlay, t)!,
      shimmerBase: Color.lerp(shimmerBase, other.shimmerBase, t)!,
      shimmerHighlight: Color.lerp(
        shimmerHighlight,
        other.shimmerHighlight,
        t,
      )!,
      gradientStart: Color.lerp(gradientStart, other.gradientStart, t)!,
      gradientEnd: Color.lerp(gradientEnd, other.gradientEnd, t)!,
    );
  }
}

/// Extension on BuildContext to easily access AppColors
extension AppColorsExtension on BuildContext {
  /// Get the AppColors from the current theme
  AppColors get colors =>
      Theme.of(this).extension<AppColors>() ?? AppColors.light;
}
