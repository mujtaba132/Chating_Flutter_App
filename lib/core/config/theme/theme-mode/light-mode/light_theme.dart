import 'package:chat_app/core/config/theme/app_colors.dart';
import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/config/theme/app_radius.dart';
import 'package:chat_app/core/config/theme/app_text_styles.dart';
import 'package:chat_app/core/config/theme/theme-mode/light-mode/light_theme_extension.dart';
import 'package:flutter/material.dart';


abstract final class LightTheme {

  static ThemeData get data {
    const colorScheme = ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.white,

      primaryContainer: AppColors.primaryContainerLight,
      onPrimaryContainer: AppColors.lightTextPrimary,

      secondary: AppColors.lightTextSecondary,
      onSecondary: AppColors.white,

      surface: AppColors.lightSurface,
      onSurface: AppColors.lightTextPrimary,

      surfaceContainerHighest: AppColors.lightSurfaceVariant,

      error: AppColors.error,
      onError: AppColors.white,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,

      scaffoldBackgroundColor: AppColors.lightBackground,

      // Typography
      textTheme: _textTheme,

      // App Bar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightSurface,
        foregroundColor: AppColors.lightTextPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: AppDimensions.appBarHeight,
      ),

      // Card
      cardTheme: CardThemeData(
        color: AppColors.lightSurface,
        elevation: AppDimensions.elevationSmall,
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
        fillColor: AppColors.lightSurfaceVariant,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing16,
          vertical: AppDimensions.spacing12,
        ),

        border: _inputBorder(
          AppColors.lightBorder,
        ),

        enabledBorder: _inputBorder(
          AppColors.lightBorder,
        ),

        focusedBorder: _inputBorder(
          AppColors.primary,
          width: AppDimensions.focusedBorderWidth,
        ),

        errorBorder: _inputBorder(
          AppColors.error,
        ),

        focusedErrorBorder: _inputBorder(
          AppColors.error,
          width: AppDimensions.focusedBorderWidth,
        ),

        hintStyle: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.lightTextTertiary,
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
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacing20,
          ),
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
            color: AppColors.lightBorder,
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
        color: AppColors.lightTextSecondary,
        size: AppDimensions.iconLarge,
      ),

      // Divider
      dividerTheme: const DividerThemeData(
        color: AppColors.lightDivider,
        thickness: 1,
        space: 1,
      ),

      // Navigation Bar
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColors.lightSurface,
        elevation: 0,
        indicatorColor: AppColors.primaryContainerLight,
        height: AppDimensions.bottomNavigationHeight,
      ),

      // Dialog
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.lightSurface,
        elevation: AppDimensions.elevationLarge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.radius20,
          ),
        ),
      ),

      // Bottom Sheet
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.lightSurface,
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
      extensions: [
            LightThemeExtension.light
      ],
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: AppTextStyles.displayLarge.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      displayMedium: AppTextStyles.displayMedium.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      headlineLarge: AppTextStyles.headlineLarge.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      headlineMedium: AppTextStyles.headlineMedium.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      headlineSmall: AppTextStyles.headlineSmall.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      titleLarge: AppTextStyles.titleLarge.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      titleMedium: AppTextStyles.titleMedium.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      titleSmall: AppTextStyles.titleSmall.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      bodyLarge: AppTextStyles.bodyLarge.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      bodyMedium: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.lightTextSecondary,
      ),
      bodySmall: AppTextStyles.bodySmall.copyWith(
        color: AppColors.lightTextSecondary,
      ),
      labelLarge: AppTextStyles.labelLarge.copyWith(
        color: AppColors.lightTextPrimary,
      ),
      labelMedium: AppTextStyles.labelMedium.copyWith(
        color: AppColors.lightTextSecondary,
      ),
      labelSmall: AppTextStyles.labelSmall.copyWith(
        color: AppColors.lightTextSecondary,
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