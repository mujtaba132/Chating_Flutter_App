import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/helper/utlils/validators/form_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/ui/chat_text_feild.dart';
import '../../../bloc/create-account/create_account_bloc.dart';

class ConfirmPasswordFeild extends StatelessWidget {
  const ConfirmPasswordFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previous, current) => 
      previous.confirmPassword!=current.confirmPassword ||
      previous.isConfirmPasswordObscured!=current.isConfirmPasswordObscured,
      builder: (context, state) {

        final createAccountBloc = context.read<CreateAccountBloc>();
        bool isPasswordVisible  = !state.isConfirmPasswordObscured;

        return CustomTextField(
          textInputAction: TextInputAction.done,
          hintText: 'Re-enter your password',
          obscureText: isPasswordVisible,
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: colors.textTertiary,
            size: AppDimensions.iconMedium,
          ),
          suffixIcon: IconButton(
            onPressed: () {
                createAccountBloc.add(CreateAccountEvent.toggleConfirmPasswordVisibility());
            },
            icon: Icon(
              isPasswordVisible?
              Icons.visibility_outlined:
              Icons.visibility_off_outlined,
              color: colors.textTertiary,
              size: AppDimensions.iconMedium,
            ),
          ),
          validator: (confirmPassword){
                return AppValidators.confirmPassword(state.password, confirmPassword!);
          },
          onChanged: (newConfirmPassword){
               createAccountBloc.add(CreateAccountEvent.setConfirmPassword(confirmPassword: newConfirmPassword));
          },
        );
      },
    );
  }
}
