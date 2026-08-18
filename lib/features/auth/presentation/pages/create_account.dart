import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/dependencies/service-loader/injection.dart';
import 'package:chat_app/features/auth/presentation/widgets/bloc_components/create-account/add_profile_pic.dart';
import 'package:chat_app/features/auth/presentation/widgets/bloc_components/create-account/create_account_btn.dart';
import 'package:chat_app/features/auth/presentation/widgets/bloc_components/create-account/full_name_feild.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom-widgets/auth_header.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom-widgets/label_text_feild.dart';
import 'package:chat_app/routes/route_service.dart';
import 'package:chat_app/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/create-account/create_account_bloc.dart';
import '../widgets/bloc_components/create-account/confirm_password_feild.dart';
import '../widgets/bloc_components/create-account/email_feild.dart';
import '../widgets/bloc_components/create-account/password_feild.dart';
import '../widgets/custom-widgets/auth_navigation.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  late CreateAccountBloc _createAccountBloc;

  @override
  void initState() {
    super.initState();
    _createAccountBloc = getIt<CreateAccountBloc>();
  }
  
  @override
  void dispose() {
    _createAccountBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    return BlocProvider(
      create: (context) => _createAccountBloc,
      child: Scaffold(
        backgroundColor: colors.background,
        body: Form(
          key: _formState,
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimensions.spacing24,
                  vertical: AppDimensions.spacing32,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 460),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Authentication Header for create Account
                      AuthHeader(
                        heading: 'Create Account',
                        subheading:
                            'Create your account and start connecting with people.',
                      ),
          
                      //Add your Profile Image
                      AddProfilePic(),
          
                      //Enter your full name
                      LabeledTextField(
                        label: 'Full name',
                        textField: FullNameFeild(),
                      ),
          
                      //Enter your Mobile number
                      LabeledTextField(label: 'Email', textField: EmailFeild()),
          
                      //Enter your secure Password
                      LabeledTextField(
                        label: 'Password',
                        textField: PasswordFeild(),
                      ),
          
                      //Enter your secure Password
                      LabeledTextField(
                        label: 'Confirm password',
                        textField: ConfirmPasswordFeild(),
                      ),
          
                      const SizedBox(height: AppDimensions.spacing24),
          
                      //Create User Account
                      CreateAccountBtn(formKey: _formState),
          
                      const SizedBox(height: AppDimensions.spacing20),
          
                      AuthNavigation(
                        onClick: ()=>RouteService.pushNamed(RoutesName.signInPage),
                        text: 'Already have an account?',
                        clickableText: 'Login',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
