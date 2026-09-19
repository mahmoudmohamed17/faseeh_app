import 'package:flutter/material.dart';

/// Centralized color palette for the app, extracted from the Faseeh UI.
/// Keep this file as the single source of truth for raw color values —
/// never hardcode a hex color anywhere else in the app.
class AppColors {
  AppColors._();

  // ---------------------------------------------------------------------
  // Brand / primary
  // ---------------------------------------------------------------------
  static const Color primary = Color(0xFF6C5CE7);
  static const Color primaryLight = Color(0xFF8B7CF6);
  static const Color primaryDark = Color(0xFF4E3FC7);
  static const Color primaryTint = Color(
    0xFFEEF0FF,
  ); // selected chip/segment bg
  static const Color onPrimary = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------
  // Surfaces
  // ---------------------------------------------------------------------
  static const Color background = Color(0xFFF5F5FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceAlt = Color(0xFFFAFAFC); // editor text field bg
  static const Color chipBackground = Color(0xFFF3F3F8); // e.g. "أكاديمي" pill

  // ---------------------------------------------------------------------
  // Text
  // ---------------------------------------------------------------------
  static const Color textPrimary = Color(0xFF1E1B2E);
  static const Color textSecondary = Color(0xFF9B9BA8);
  static const Color textHint = Color(0xFFB6B6C3); // placeholder text
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------
  // Semantic accents
  // ---------------------------------------------------------------------
  static const Color success = Color(0xFF2ECC71);
  static const Color warning = Color(0xFFF5A623);
  static const Color info = Color(0xFF5B6EF5);
  static const Color error = Color(0xFFE74C3C);

  // ---------------------------------------------------------------------
  // UI elements
  // ---------------------------------------------------------------------
  static const Color divider = Color(0xFFECECF2);
  static const Color border = Color(0xFFE6E6EF);
  static const Color toggleTrackOff = Color(0xFFE4E4EA);
  static const Color navInactive = Color(0xFFB4B4C0);
  static const Color shadow = Color(0x1A6C5CE7); // soft purple-tinted shadow

  // ---------------------------------------------------------------------
  // Gradients
  // ---------------------------------------------------------------------
  static const LinearGradient primaryCta = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [primary, primaryLight],
  );

  // ---------------------------------------------------------------------
  // Material ColorScheme
  // ---------------------------------------------------------------------
  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: onPrimary,
    primaryContainer: primaryTint,
    onPrimaryContainer: primaryDark,
    secondary: info,
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFFE8EBFF),
    onSecondaryContainer: Color(0xFF2A3899),
    tertiary: warning,
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xFFFFF1DA),
    onTertiaryContainer: Color(0xFF7A4B00),
    error: error,
    onError: Colors.white,
    errorContainer: Color(0xFFFCE4E1),
    onErrorContainer: Color(0xFF8B1D0F),
    surface: surface,
    onSurface: textPrimary,
    surfaceContainerLowest: Colors.white,
    surfaceContainerLow: surfaceAlt,
    surfaceContainer: chipBackground,
    surfaceContainerHigh: Color(0xFFEDEDF3),
    surfaceContainerHighest: Color(0xFFE6E6EF),
    onSurfaceVariant: textSecondary,
    outline: border,
    outlineVariant: divider,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: textPrimary,
    onInverseSurface: Colors.white,
    inversePrimary: primaryLight,
  );
}
