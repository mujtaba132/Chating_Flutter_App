import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/ui/chat_text_feild.dart';

class PasswordFeild extends StatelessWidget {
  const PasswordFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    return CustomTextField(
                    textInputAction: TextInputAction.next,
                    hintText: 'Create a password',
                    obscureText: true,
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: colors.textTertiary,
                        size: AppDimensions.iconMedium,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                        
                        },
                        icon: Icon(
                          Icons.visibility_outlined,
                          color: colors.textTertiary,
                           size: AppDimensions.iconMedium,
                        ),
                      ),
                  );
  }
}