import 'package:chat_app/core/config/theme/app_colors.dart';
import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/config/theme/theme-mode/dark-mode/dark_theme_extension.dart';
import 'package:flutter/material.dart';
import '../../app_radius.dart';
import '../../app_text_styles.dart';


abstract final class DarkTheme {
  static ThemeData get data {
    const colorScheme = ColorScheme.dark(
      primary: AppColors.primaryLight,
      onPrimary: AppColors.darkBackground,

      primaryContainer: AppColors.primaryContainerDark,
      onPrimaryContainer: AppColors.darkTextPrimary,

      secondary: AppColors.darkTextSecondary,
      onSecondary: AppColors.darkBackground,

      surface: AppColors.darkSurface,
      onSurface: AppColors.darkTextPrimary,

      surfaceContainerHighest: AppColors.darkSurfaceVariant,

      error: AppColors.errorLight,
      onError: AppColors.darkBackground,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,

      scaffoldBackgroundColor: AppColors.darkBackground,

      // Typography
      textTheme: _textTheme,

      // App Bar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkSurface,
        foregroundColor: AppColors.darkTextPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: AppDimensions.appBarHeight,
      ),

      // Card
      cardTheme: CardThemeData(
        color: AppColors.darkSurface,
        elevation: AppDimensions.elevationNone,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.radius12,
          ),
        ),
      ),

      // Input
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.darkSurfaceVariant,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing16,
          vertical: AppDimensions.spacing12,
        ),

        border: _inputBorder(
          AppColors.darkBorder,
        ),

        enabledBorder: _inputBorder(
          AppColors.darkBorder,
        ),

        focusedBorder: _inputBorder(
          AppColors.primaryLight,
          width: AppDimensions.focusedBorderWidth,
        ),

        errorBorder: _inputBorder(
          AppColors.errorLight,
        ),

        focusedErrorBorder: _inputBorder(
          AppColors.errorLight,
          width: AppDimensions.focusedBorderWidth,
        ),

        hintStyle: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.darkTextTertiary,
        ),
      ),

      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(
            0,
            AppDimensions.buttonHeightMedium,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.radius12,
            ),
          ),
          textStyle: AppTextStyles.labelLarge,
        ),
      ),

      // Filled Button
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(
            0,
            AppDimensions.buttonHeightMedium,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.radius12,
            ),
          ),
          textStyle: AppTextStyles.labelLarge,
        ),
      ),

      // Outlined Button
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(
            0,
            AppDimensions.buttonHeightMedium,
          ),
          side: const BorderSide(
            color: AppColors.darkBorder,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.radius12,
            ),
          ),
          textStyle: AppTextStyles.labelLarge,
        ),
      ),

      // Icons
      iconTheme: const IconThemeData(
        color: AppColors.darkTextSecondary,
        size: AppDimensions.iconLarge,
      ),

      // Divider
      dividerTheme: const DividerThemeData(
        color: AppColors.darkDivider,
        thickness: 1,
        space: 1,
      ),

      // Navigation Bar
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColors.darkSurface,
        elevation: 0,
        indicatorColor: AppColors.primaryContainerDark,
        height: AppDimensions.bottomNavigationHeight,
      ),

      // Dialog
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.darkSurface,
        elevation: AppDimensions.elevationLarge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.radius20,
          ),
        ),
      ),

      // Bottom Sheet
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.darkSurface,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
      ),

      // Snack Bar
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.radius12,
          ),
        ),
      ),

      // Chat-specific theme
      extensions: [ DarkThemeExtension.dark ],
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: AppTextStyles.displayLarge.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      displayMedium: AppTextStyles.displayMedium.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      headlineLarge: AppTextStyles.headlineLarge.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      headlineMedium: AppTextStyles.headlineMedium.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      headlineSmall: AppTextStyles.headlineSmall.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      titleLarge: AppTextStyles.titleLarge.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      titleMedium: AppTextStyles.titleMedium.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      titleSmall: AppTextStyles.titleSmall.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      bodyLarge: AppTextStyles.bodyLarge.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      bodyMedium: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.darkTextSecondary,
      ),
      bodySmall: AppTextStyles.bodySmall.copyWith(
        color: AppColors.darkTextSecondary,
      ),
      labelLarge: AppTextStyles.labelLarge.copyWith(
        color: AppColors.darkTextPrimary,
      ),
      labelMedium: AppTextStyles.labelMedium.copyWith(
        color: AppColors.darkTextSecondary,
      ),
      labelSmall: AppTextStyles.labelSmall.copyWith(
        color: AppColors.darkTextSecondary,
      ),
    );
  }

  static OutlineInputBorder _inputBorder(
    Color color, {
    double width = AppDimensions.borderWidth,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        AppRadius.chatInput,
      ),
      borderSide: BorderSide(
        color: color,
        width: width,
      ),
    );
  }
}