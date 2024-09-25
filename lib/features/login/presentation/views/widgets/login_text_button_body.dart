import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/core/utils/app_router.dart';
import 'package:my_todo/core/utils/components.dart';
import 'package:my_todo/core/utils/styles.dart';
import 'package:my_todo/features/login/presentation/views/widgets/login_text_button.dart';

class LoginTextButtonBody extends StatelessWidget {
  const LoginTextButtonBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginTextButton(
          onPressed: () {},
          textStyling: Style.textStyle13.copyWith(
            color: const Color(0xff50C2C9),
          ),
          constantText: '',
          variableText: 'Forget password ?',
        ),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 26,
          ),
          child: defaultButton(
            onPressed: () {},
            text: 'Login',
            width: 380,
            height: 60,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        LoginTextButton(
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kRegisterView);
          },
          textStyling: Style.textStyle16.copyWith(
            color: const Color(0xff50C2C9),
          ),
          constantText: 'Don\'t hava an account?',
          variableText: 'Sign up',
        ),
      ],
    );
  }
}
