import 'package:chat_app/core/helper/extensions/theme/chat-theme/chat_theme_extension.dart';
import 'package:flutter/material.dart';


extension AppThemeContext on BuildContext {
  // ---------------------------------------------------------------------------
  // App Theme Extension
  // ---------------------------------------------------------------------------

  AppThemeExtension get chatTheme {
    return Theme.of(this).extension<AppThemeExtension>()!;
  }

  // ---------------------------------------------------------------------------
  // Color Scheme
  // ---------------------------------------------------------------------------

  ColorScheme get colors {
    return Theme.of(this).colorScheme;
  }

  // ---------------------------------------------------------------------------
  // Text Theme
  // ---------------------------------------------------------------------------

  TextTheme get textTheme {
    return Theme.of(this).textTheme; 
  }

  // ---------------------------------------------------------------------------
  // Theme
  // ---------------------------------------------------------------------------

  ThemeData get theme {
    return Theme.of(this);
  }

  // ---------------------------------------------------------------------------
  // Dark Mode
  // ---------------------------------------------------------------------------

  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }
}