import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/helper/utlils/validators/form_validation.dart';
import 'package:chat_app/core/ui/chat_text_feild.dart';
import 'package:chat_app/features/auth/presentation/bloc/login/bloc/login_bloc.dart';
import 'package:chat_app/features/auth/presentation/bloc/login/state/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/login/event/login_event.dart';

class LoginEmailFeild extends StatelessWidget {
  const LoginEmailFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,

      builder: (context, state) {
        final loginBloc = context.read<LoginBloc>();

        return CustomTextField(
          textInputAction: TextInputAction.next,
          hintText: 'abc@gmail.com',
          prefixIcon: Icon(
            Icons.mail_outlined,
            color: colors.textTertiary,
            size: AppDimensions.iconMedium,
          ),
          validator: AppValidators.email,
          onChanged: (newEmail) {
                  loginBloc.add(LoginEvent.setEmail(email: newEmail));
          },
        );
      },
    );
  }
}
