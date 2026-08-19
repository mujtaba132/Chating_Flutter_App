import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/helper/utlils/validators/form_validation.dart';
import 'package:chat_app/features/auth/presentation/bloc/login/event/login_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/config/theme/app_dimensions.dart';
import '../../../../../../core/ui/chat_text_feild.dart';
import '../../../bloc/login/bloc/login_bloc.dart';
import '../../../bloc/login/state/login_state.dart';

class LoginPasswordFeild extends StatelessWidget {
  const LoginPasswordFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => 
      previous.password!=current.password || 
      previous.isPasswordObscured!=current.isPasswordObscured,

      builder: (context, state) {
        final loginBloc = context.read<LoginBloc>();
        final isPasswordVisible = !state.isPasswordObscured;

        return CustomTextField(
                    textInputAction: TextInputAction.next,
                    hintText: 'Create a password',
                    obscureText: state.isPasswordObscured,
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: colors.textTertiary,
                        size: AppDimensions.iconMedium,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                            loginBloc.add(LoginEvent.togglePasswordVisibility());
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
                    onChanged: (newPassword) {
                          loginBloc.add(LoginEvent.setPassword(password: newPassword));
                    },
                  );
      },
    );
  }
}