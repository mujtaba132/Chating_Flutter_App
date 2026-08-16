import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/config/theme/app_text_styles.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/core/ui/chat_text_feild.dart';
import 'package:chat_app/features/auth/presentation/widgets/bloc_components/create-account/add_profile_pic.dart';
import 'package:chat_app/features/auth/presentation/widgets/bloc_components/create-account/create_account_btn.dart';
import 'package:chat_app/features/auth/presentation/widgets/bloc_components/create-account/full_name_feild.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom-widgets/auth_header.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom-widgets/label_text_feild.dart';
import 'package:flutter/material.dart';

import '../widgets/bloc_components/create-account/confirm_password_feild.dart';
import '../widgets/bloc_components/create-account/number_feild.dart';
import '../widgets/bloc_components/create-account/password_feild.dart';
import '../widgets/custom-widgets/auth_navigation.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _fullNameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.chatTheme;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
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
                    subheading: 'Create your account and start connecting with people.',
                  ),

                  //Add your Profile Image
                  AddProfilePic(),

                  //Enter your full name
                  LabeledTextField(
                    label: 'Full name',
                    textField: FullNameFeild(),
                  ),

                  //Enter your Mobile number
                  LabeledTextField(
                    label: 'Email',
                    textField: EmailFeild(),
                  ),

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

                  CreateAccountBtn(),

                  const SizedBox(height: AppDimensions.spacing20),

                  AuthNavigation(
                      text: 'Already have an account?',
                      clickableText: 'Login',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
