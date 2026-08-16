import 'package:chat_app/core/ui/chat_app_btn.dart';
import 'package:flutter/material.dart';

class CreateAccountBtn extends StatelessWidget {
  const CreateAccountBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppButton(text: 'Create Account', onPressed: () {},),
    );
  }
}
