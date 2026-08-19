import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/helper/utlils/validators/form_validation.dart';
import 'package:chat_app/core/ui/chat_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/create-account/create_account_bloc.dart';

class EmailFeild extends StatelessWidget {
  const EmailFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previous, current) => previous.email!=current.email,
      builder: (context, state) {
        final createAccountBloc = context.read<CreateAccountBloc>();

        return CustomTextField(
          textInputAction: TextInputAction.next,
          hintText: 'umar@gmail.com',
          prefixIcon: Icon(
            Icons.mail_outlined,
            color: colors.textTertiary,
            size: AppDimensions.iconMedium,
          ),
          validator: AppValidators.email,
          onChanged: (newEmail){
               createAccountBloc.add(CreateAccountEvent.setEmail(email: newEmail));
          },
        );
      },
    );
  }
}
