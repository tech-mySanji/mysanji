library my_sanji_theme;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseTheme {
  static const Color primary = Color(0xFF068C1A);
  static const Color secondary = Color(0xFFF2CB05);
  static const Color tertiary = Color(0xFFEE8B60);
  static const Color alternate = Color(0xFFFF5963);
  static const Color primaryText = Color(0xFF000000);
  static const Color secondaryText = Color(0xFF57636C);
  static const Color canvasColor = Color(0xFFFFFDF2);
  static const Color scaffoldBackgroundColor = Color(0xFFFFFFFF);
  static const Color accent1 = Color(0xFF616161);
  static const Color accent2 = Color(0xFF757575);
  static const Color accent3 = Color(0xFFE0E0E0);
  static const Color accent4 = Color(0xFFEEEEEE);
  static const Color success = Color(0xFF04A24C);
  static const Color warning = Color(0xFFFCDC0C);
  static const Color error = Color(0xFFE21C3D);
  static const Color info = Color(0xFF1C4494);

  static const Color primaryBtnText = Colors.white;
  static const Color lineColor = Color(0xFFE0E3E7);

  static const baseTextStyle1 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: primaryText,
  );

  static final baseTextStyle =
      GoogleFonts.poppins(fontWeight: FontWeight.w300, color: primaryText);

  static final displayLarge = baseTextStyle.copyWith(fontSize: 57);
  static final displayMedium = baseTextStyle.copyWith(fontSize: 45);
  static final displaySmall = baseTextStyle.copyWith(fontSize: 24,fontWeight: FontWeight.w400);

  static final headlineLarge = baseTextStyle.copyWith(fontSize: 32);
  static final headlineMedium = baseTextStyle.copyWith(fontSize: 22,fontWeight: FontWeight.w400, color: secondaryText);
  static final headlineSmall = baseTextStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w400);

  static final titleLarge = baseTextStyle.copyWith(fontSize: 22,fontWeight: FontWeight.w500);
  static final titleMedium = baseTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.w400);
  static final titleSmall = baseTextStyle.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: secondaryText);


  static final labelLarge = baseTextStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w500);
  static final labelMedium = baseTextStyle.copyWith(fontSize: 12,fontWeight: FontWeight.w500);
  static final labelSmall = baseTextStyle.copyWith(fontSize: 11,fontWeight: FontWeight.w500);

  static final bodyLarge = baseTextStyle.copyWith(fontSize: 16);
  static final bodyMedium = baseTextStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w400);
  static final bodySmall = baseTextStyle.copyWith(fontSize: 12,fontWeight: FontWeight.w400,color: secondaryText);
}

class MySanjiThemeLight {
  static ThemeData getTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: BaseTheme.primary),
      useMaterial3: true,
      primaryColor: BaseTheme.primary,
      hintColor: BaseTheme.secondary,
      scaffoldBackgroundColor: BaseTheme.scaffoldBackgroundColor,
      textTheme: TextTheme(
        displayLarge: BaseTheme.displayLarge,
        displayMedium: BaseTheme.displayMedium,
        displaySmall: BaseTheme.displaySmall,
        headlineLarge: BaseTheme.headlineLarge,
        headlineMedium: BaseTheme.headlineMedium,
        headlineSmall: BaseTheme.headlineSmall,
        titleLarge: BaseTheme.titleLarge,
        titleMedium: BaseTheme.titleMedium,
        titleSmall: BaseTheme.titleSmall,
        labelLarge: BaseTheme.labelLarge,
        labelMedium: BaseTheme.labelMedium,
        labelSmall: BaseTheme.labelSmall,
        bodyLarge: BaseTheme.bodyLarge,
        bodyMedium: BaseTheme.bodyMedium,
        bodySmall: BaseTheme.bodySmall,
      ),
      canvasColor: BaseTheme.canvasColor,
      dividerColor: BaseTheme.lineColor,
      indicatorColor: BaseTheme.info,
      splashColor: BaseTheme.primary.withOpacity(0.5),
      highlightColor: BaseTheme.primary.withOpacity(0.5),
      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
