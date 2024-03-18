import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_estate/core/core.dart';

ThemeData get appTheme => createTheme(
      brightness: Brightness.light,
      primaryColor: primaryGreen,
    );

ThemeData createTheme({
  required Brightness brightness,
  required Color primaryColor,
}) {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: brightness,
    fontFamily: fontFamily,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    useMaterial3: false,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: primaryColor, brightness: brightness),
  );
}
