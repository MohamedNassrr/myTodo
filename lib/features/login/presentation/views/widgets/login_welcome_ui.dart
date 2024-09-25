import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/assets_data.dart';
import 'package:my_todo/core/utils/styles.dart';

class LoginWelcomeUi extends StatelessWidget {
  const LoginWelcomeUi ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        top: 65,
      ),
      child: Center(
        child: Column(
          children: [
            const Text(
              'Welcome back',
              style: Style.textStyle18,
            ),
            const SizedBox(
              height: 53,
            ),
            Image.asset(AssetsData.loginImage)
          ],
        ),
      ),
    );
  }
}