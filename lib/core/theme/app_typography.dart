import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Centralized typography for the app.
///
/// The UI uses a rounded, geometric Arabic sans typeface. Swap [fontFamily]
/// for whichever font family you've actually bundled (e.g. 'Cairo',
/// 'Tajawal', 'IBMPlexSansArabic') — make sure the weights below
/// (regular/medium/semibold/bold) are all present in pubspec.yaml.
class AppTypography {
  AppTypography._();

  static const String fontFamily = 'Cairo';

  // Screen titles, e.g. "تحرير النص"
  static const TextStyle titleLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  // Section headers, e.g. "المستندات الأخيرة"
  static const TextStyle titleMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.35,
  );

  // Card titles, e.g. document names
  static const TextStyle titleSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  // Body copy / editor text
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.6,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  // Placeholder text, e.g. "الصق نصك هنا أو اكتب مباشرة..."
  static const TextStyle hint = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
    height: 1.5,
  );

  // Secondary/meta text, e.g. "315 حرف", "عضو منذ سبتمبر 2026"
  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.4,
  );

  // Chip / pill labels, e.g. "فصحى", "أكاديمي"
  static const TextStyle label = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    height: 1.3,
  );

  // Primary button label, e.g. "فحص النص"
  static const TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.textOnPrimary,
    height: 1.2,
  );

  // Big stat numbers, e.g. "89%", "183", "47"
  static const TextStyle statNumber = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
    height: 1.1,
  );

  /// Full [TextTheme] for plugging into [ThemeData.textTheme].
  static const TextTheme textTheme = TextTheme(
    headlineSmall: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: caption,
    labelLarge: button,
    labelMedium: label,
    labelSmall: caption,
  );
}
