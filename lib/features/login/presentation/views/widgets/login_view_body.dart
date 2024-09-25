import 'package:flutter/material.dart';
import 'package:my_todo/features/login/presentation/views/widgets/login_from_field.dart';
import 'package:my_todo/features/login/presentation/views/widgets/login_text_button_body.dart';
import 'package:my_todo/features/login/presentation/views/widgets/login_welcome_ui.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginWelcomeUi(),
          SizedBox(
            height: 87,
          ),
          LoginFormField(),
          SizedBox(
            height: 18,
          ),
          LoginTextButtonBody(),
        ],
      ),
    );
  }
}

