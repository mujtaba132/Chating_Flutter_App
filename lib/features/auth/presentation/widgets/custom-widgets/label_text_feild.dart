import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField({
    super.key,
    required this.label,
    required this.textField,
    this.bottomSpacing = AppDimensions.spacing20,
  });

  final String label;
  final Widget textField;
  final double bottomSpacing;

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.labelLarge?.copyWith(
            color: colors.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(
          height: AppDimensions.spacing8,
        ),

        textField,

        SizedBox(
          height: bottomSpacing,
        ),
      ],
    );
  }
}