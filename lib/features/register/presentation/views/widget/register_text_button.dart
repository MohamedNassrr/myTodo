import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/core/utils/app_router.dart';
import 'package:my_todo/core/utils/styles.dart';

class RegisterTextButton extends StatelessWidget {
  const RegisterTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Already have an account ?',
          style: Style.textStyle16,
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pushReplacement(
              AppRouter.kLoginView,
            );
          },
          child: Text(
            'Sign in',
            style: Style.textStyle16.copyWith(
              color: const Color(0xff50C2C9),
            ),
          ),
        ),
      ],
    );
  }
}
