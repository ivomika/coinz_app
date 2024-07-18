import 'package:coinz_app/ui/kit/base/constants/offset.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeModel{
  static ThemeData get light => _getLightData();
  static ThemeData get dark => _getDarkData();
  static ThemeMode get mode => ThemeMode.system;

  static ThemeData _getLightData() {
    return FlexThemeData.light(
      scheme: FlexScheme.blueM3,
      useMaterial3: true,
      background: const Color(0xFFF8F9FC),
      surface: const Color(0xFFF8F9FC)
    ).copyWith(
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                shape: WidgetStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(OffsetConstants.normal.size)
                    )
                )
            )
        )
    );
  }

  static ThemeData _getDarkData() {
    return FlexThemeData.dark(
      scheme: FlexScheme.blueM3,
      useMaterial3: true,
      background: const Color(0xFF1A1B1C),
      surface: const Color(0xFF1A1B1C),
    ).copyWith(
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                shape: WidgetStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(OffsetConstants.normal.size)
                    )
                )
            )
        )
    );
  }
}