import 'package:chat_app/core/ui/chat_app_btn.dart';
import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppButton(text: 'Login', onPressed: () {},),
    );
  }
}
