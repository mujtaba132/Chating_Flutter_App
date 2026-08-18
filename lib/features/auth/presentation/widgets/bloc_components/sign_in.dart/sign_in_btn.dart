import 'package:chat_app/core/helper/messenger/app_messenger.dart';
import 'package:chat_app/core/helper/utlils/enum/enum.dart';
import 'package:chat_app/core/ui/chat_app_btn.dart';
import 'package:chat_app/features/auth/presentation/bloc/login/bloc/login_bloc.dart';
import 'package:chat_app/features/auth/presentation/bloc/login/state/login_state.dart';
import 'package:chat_app/routes/route.dart';
import 'package:chat_app/routes/route_service.dart';
import 'package:chat_app/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login/event/login_event.dart';

class LoginBtn extends StatelessWidget {
  final GlobalKey<FormState> _formkey;
  const LoginBtn({super.key, required this._formkey});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.loginstatus!=current.loginstatus,
      buildWhen: (previous, current) => previous.loginstatus!=current.loginstatus,

      listener: (context, state) {
              if(state.loginstatus==ExceptionStatus.success){
                   _formkey.currentState!.reset();
                   messenger.success('Login successfull');
                   RouteService.pushNamedAndRemoveUntil(
                    RoutesName.chatPage,
                    (route) => false,
                    );
              } 
              else if (state.loginstatus == ExceptionStatus.error){
                   messenger.error(state.errorMessage);
              }
      
          },

      builder: (context, state) {
         final loginBloc = context.read<LoginBloc>();
         final isLoading = state.loginstatus == ExceptionStatus.loading;
     
        return SizedBox(
          width: double.infinity,
          child: AppButton(
            text: 'Login', 
            isLoading: isLoading,
            onPressed: () {
                   
                   if(!_formkey.currentState!.validate()){
                    return;
                   }

                   loginBloc.add(LoginEvent.login());
            }
            ),
        );
      },
    );
  }
}
