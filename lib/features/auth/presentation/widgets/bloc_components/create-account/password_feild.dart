import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/helper/utlils/validators/form_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/ui/chat_text_feild.dart';
import '../../../bloc/create-account/create_account_bloc.dart';

class PasswordFeild extends StatelessWidget {
  const PasswordFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previous, current) => 
      previous.password!=current.password ||
      previous.isPasswordObscured!=current.isPasswordObscured,
      builder: (context, state) {

         final createAccountbloc = context.read<CreateAccountBloc>();
         bool isPasswordVisible = !state.isPasswordObscured;

        return CustomTextField(
          textInputAction: TextInputAction.next,
          hintText: 'Create a password',
          obscureText: isPasswordVisible,
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: colors.textTertiary,
            size: AppDimensions.iconMedium,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              createAccountbloc.add(CreateAccountEvent.togglePasswordVisibility());
            },
            icon: Icon(
              isPasswordVisible?
              Icons.visibility_outlined:
              Icons.visibility_off_outlined,
              color: colors.textTertiary,
              size: AppDimensions.iconMedium,
            ),
          ),
          validator: AppValidators.password,
          onChanged: (newPassword){
              createAccountbloc.add(CreateAccountEvent.setPassword(password: newPassword));
          },
        );
      },
    );
  }
}
