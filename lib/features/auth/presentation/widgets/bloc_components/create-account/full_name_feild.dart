import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/helper/utlils/validators/form_validation.dart';
import 'package:chat_app/core/ui/chat_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/create-account/create_account_bloc.dart';

class FullNameFeild extends StatelessWidget {
  const FullNameFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previous, current) => previous.fullName!=current.fullName,
      builder: (context, state) {
          final createAccountBloc = context.read<CreateAccountBloc>();
        return CustomTextField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.name,
          hintText: 'Enter your full name',
          prefixIcon: Icon(
            Icons.person_outline_rounded,
            color: colors.textTertiary,
            size: AppDimensions.iconMedium,
          ),
          validator:AppValidators.fullName,
          onChanged: (newName){
                  createAccountBloc.add(CreateAccountEvent.setFullName(fullName: newName));
          },
        );
      },
    );
  }
}
