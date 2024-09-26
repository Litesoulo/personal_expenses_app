import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../generated/colors.gen.dart';
import '../../../../generated/fonts.gen.dart';
import '../../constant/app_constants.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,

        // Global font family
        fontFamily: FontFamily.comfortaa,

        // Colors
        scaffoldBackgroundColor: ColorName.scaffoldBackgroundLight,
        colorScheme: const ColorScheme.light(
          primary: ColorName.primaryLight,
          onPrimary: ColorName.onPrimaryLight,
          surface: ColorName.surfaceLight,
          onSurface: ColorName.onSurfaceLight,
          secondary: ColorName.secondaryLight,
          onSecondary: ColorName.onSecondaryLight,
          error: ColorName.errorLight,
          onError: ColorName.onErrorLight,
        ),

        // AppBar
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: ColorName.scaffoldBackgroundLight,
          surfaceTintColor: ColorName.scaffoldBackgroundLight,
        ),

        // Override default back button
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (context) => const Icon(
            CupertinoIcons.chevron_back,
          ),
        ),

        // Card
        cardTheme: CardTheme(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          ),
          clipBehavior: Clip.antiAlias,
        ),

        // List tile
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppConstants.borderRadius,
            ),
          ),
        ),

        // Input
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppConstants.borderRadius,
              ),
            ),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppConstants.padding * 2,
            vertical: AppConstants.padding,
          ),
          hintStyle: TextStyle(
            color: ColorName.onSurfaceLight,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,

        // Global font family
        fontFamily: FontFamily.comfortaa,

        // Colors
        scaffoldBackgroundColor: ColorName.scaffoldBackgroundDark,
        colorScheme: const ColorScheme.dark(
          primary: ColorName.primaryDark,
          onPrimary: ColorName.onPrimaryDark,
          surface: ColorName.surfaceDark,
          onSurface: ColorName.onSurfaceDark,
          secondary: ColorName.secondaryDark,
          onSecondary: ColorName.onSecondaryDark,
          error: ColorName.errorDark,
          onError: ColorName.onErrorDark,
        ),

        // AppBar
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: ColorName.scaffoldBackgroundDark,
          surfaceTintColor: ColorName.scaffoldBackgroundDark,
        ),

        // Override default back button
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (context) => const Icon(
            CupertinoIcons.chevron_back,
          ),
        ),

        // Card
        cardTheme: CardTheme(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          ),
          clipBehavior: Clip.antiAlias,
        ),

        // List tile
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppConstants.borderRadius,
            ),
          ),
        ),

        // Input
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppConstants.borderRadius,
              ),
            ),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppConstants.padding * 2,
            vertical: AppConstants.padding,
          ),
          hintStyle: TextStyle(
            color: ColorName.onSurfaceDark,
          ),
        ),
      );
}

