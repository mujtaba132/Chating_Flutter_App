import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/config/theme/app_text_styles.dart';

class AuthNavigation extends StatelessWidget {

  const AuthNavigation({super.key,required this.text,required this.clickableText});

  final String text;
  final String clickableText;

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return  Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          '$text ',
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: colors.textSecondary,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to login
                          },
                          child: Text(
                            clickableText,
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: colors.primary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}