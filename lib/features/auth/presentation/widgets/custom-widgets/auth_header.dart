import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.heading,
    required this.subheading,
    this.bottomSpacing = AppDimensions.spacing24,
  });

  final String heading;
  final String subheading;
  final double bottomSpacing;

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    return Padding(
      padding: EdgeInsets.only(
        bottom: bottomSpacing,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: AppTextStyles.headlineLarge.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(
            height: AppDimensions.spacing8,
          ),

          Text(
            subheading,
            style: AppTextStyles.bodyMedium.copyWith(
              color: colors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}