import 'package:chat_app/core/config/theme/app_dimensions.dart' show AppDimensions;
import 'package:chat_app/core/config/theme/app_radius.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.hintText = 'Type a message...',
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLength,
    this.minLines = 1,
    this.maxLines = 5,
    this.textInputAction = TextInputAction.newline,
    this.keyboardType = TextInputType.multiline,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;

  final String hintText;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;

  final bool enabled;
  final bool readOnly;

  /// Hides the entered text.
  ///
  /// Useful for password and confirm-password fields.
  final bool obscureText;

  final int? maxLength;

  final int minLines;
  final int maxLines;

  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    final textTheme = context.textTheme;

    return TextFormField(
      controller: controller,
      focusNode: focusNode,

      enabled: enabled,
      readOnly: readOnly,
      obscureText: obscureText,

      minLines: obscureText ? 1 : minLines,
      maxLines: obscureText ? 1 : maxLines,

      maxLength: maxLength,

      keyboardType: keyboardType,
      textInputAction: textInputAction,

      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: validator,

      style: textTheme.bodyMedium?.copyWith(
        color: colors.textPrimary,
        fontWeight: FontWeight.w400,
      ),

      cursorColor: colors.primary,

      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: textTheme.bodyMedium?.copyWith(
          color: colors.textTertiary,
        ),

        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        // ---------------------------------------------------------------------
        // BACKGROUND
        // ---------------------------------------------------------------------

        filled: true,
        fillColor: colors.surfaceSecondary,

        // ---------------------------------------------------------------------
        // PADDING
        // ---------------------------------------------------------------------

        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing16,
          vertical: AppDimensions.spacing12,
        ),

        // ---------------------------------------------------------------------
        // BORDER
        // ---------------------------------------------------------------------

        border: _border(
          colors.border,
        ),

        enabledBorder: _border(
          colors.border,
        ),

        focusedBorder: _border(
          colors.borderFocused,
          width: AppDimensions.focusedBorderWidth,
        ),

        errorBorder: _border(
          colors.error,
        ),

        focusedErrorBorder: _border(
          colors.error,
          width: AppDimensions.focusedBorderWidth,
        ),
      ),
    );
  }

  OutlineInputBorder _border(
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