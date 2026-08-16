import 'package:chat_app/core/config/theme/app_dimensions.dart';
import 'package:chat_app/core/helper/extensions/theme/app_theme_context.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom-widgets/auth_header.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom-widgets/label_text_feild.dart';
import 'package:flutter/material.dart';

import '../widgets/bloc_components/sign_in.dart/number_feild.dart';
import '../widgets/bloc_components/sign_in.dart/password_feild.dart';
import '../widgets/bloc_components/sign_in.dart/sign_in_btn.dart';
import '../widgets/custom-widgets/auth_navigation.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                    heading: 'Welcome back! 👋',
                    subheading:
                        'Login your account and start connecting with people.',
                  ),

                  const SizedBox(height: AppDimensions.spacing32),

                  //Login gif Image
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Image.asset('assets/images/sign_in.gif', height: 180),
                    ],
                  ),

                  const SizedBox(height: AppDimensions.spacing32),

                  //Enter your Mobile number
                  LabeledTextField(
                    label: 'Email',
                    textField: LoginEmailFeild(),
                  ),

                  //Enter your secure Password
                  LabeledTextField(
                    label: 'Password',
                    textField: LoginPasswordFeild(),
                  ),

                  const SizedBox(height: AppDimensions.spacing24),

                  //Create Account Button
                  LoginBtn(),

                  const SizedBox(height: AppDimensions.spacing20),

                  // Authentication Switch
                  AuthNavigation(
                    text: 'Dont have an account?',
                    clickableText: 'Create account',
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
