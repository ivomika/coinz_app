import 'package:coinz_app/ui/kit/base/constants/offset.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeModel{
  static ThemeData get light => _getLightData();
  static ThemeData get dark => _getDarkData();
  static ThemeMode get mode => ThemeMode.system;

  static _getLightData() {
    return FlexThemeData.light(
      scheme: FlexScheme.blueM3,
      useMaterial3: true,
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

  static _getDarkData() {
    FlexThemeData.dark(
      scheme: FlexScheme.blueM3,
      useMaterial3: true,
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