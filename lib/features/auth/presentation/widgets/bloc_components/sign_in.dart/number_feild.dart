import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/ui/chat_text_feild.dart';
import 'package:flutter/material.dart';

class LoginEmailFeild extends StatelessWidget {
  const LoginEmailFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return  CustomTextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    hintText: 'umar@gmail.com',
                      prefixIcon: Icon(
                        Icons.mail_outlined,
                        color: colors.textTertiary,
                        size: AppDimensions.iconMedium,
                      )
                  );
  }
}