import 'package:chat_app/core/helper/messenger/app_messenger.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/core/ui/chat_app_btn.dart';
import 'package:chat_app/features/auth/presentation/bloc/create-account/create_account_bloc.dart';
import 'package:chat_app/routes/route_service.dart';
import 'package:chat_app/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountBtn extends StatelessWidget {

  final GlobalKey<FormState> formKey;
  const CreateAccountBtn({super.key,required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previous, current) => previous.formStatus!=current.formStatus,
      listenWhen: (previous, current) => previous.formStatus!=current.formStatus,

      listener: (context, state) {
             if(state.formStatus == ExceptionStatus.success){
                  formKey.currentState!.reset();
                  messenger.success('Account created successfully');
                  RouteService.pushNamed(RoutesName.signInPage);
             }
             else if (state.formStatus == ExceptionStatus.error){
                   messenger.error(state.errorMessage!);
             } 
      },

      builder: (context, state) {
        final createAccountBloc = context.read<CreateAccountBloc>();
        final isLoading = state.formStatus == ExceptionStatus.loading;

        return SizedBox(
          width: double.infinity,
          child: AppButton(
            text: 'Create Account', 
            isLoading: isLoading,
            onPressed: () {
              
                 if(formKey.currentState!.validate()){
                        createAccountBloc.add(CreateAccountEvent.createAccount());
                 } else {
                      return;
                 }      

          }),
        );
      },
    );
  }
}
