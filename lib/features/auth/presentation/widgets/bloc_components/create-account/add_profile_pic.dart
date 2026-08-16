import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/config/theme/app_dimensions.dart';
import '../../../../../../core/config/theme/app_text_styles.dart';

class AddProfilePic extends StatelessWidget {
  const AddProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return Column(
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              // Pick image
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 104,
                  height: 104,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colors.surfaceSecondary,
                    border: Border.all(color: colors.border, width: 1.5),
                  ),
                  child: Icon(
                    Icons.person_outline_rounded,
                    size: 48,
                    color: colors.textTertiary,
                  ),
                ),

                Positioned(
                  right: -2,
                  bottom: 2,
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      shape: BoxShape.circle,
                      border: Border.all(color: colors.background, width: 3),
                    ),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 17,
                      color: colors.textOnPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: AppDimensions.spacing12),

        Center(
          child: Text(
            'Add profile photo',
            style: AppTextStyles.labelMedium.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: AppDimensions.spacing24),
      ],
    );
  }
}
