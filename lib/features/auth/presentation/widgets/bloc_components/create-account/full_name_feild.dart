import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/ui/chat_text_feild.dart';
import 'package:flutter/material.dart';

class FullNameFeild extends StatelessWidget {
  const FullNameFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return CustomTextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    hintText: 'Enter your full name',                         
                    prefixIcon: Icon(
                        Icons.person_outline_rounded,
                        color: colors.textTertiary,
                        size: AppDimensions.iconMedium,
                      ),
                  );
  }
}