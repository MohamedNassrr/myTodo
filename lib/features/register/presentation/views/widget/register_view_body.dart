import 'package:flutter/material.dart';
import 'package:my_todo/features/register/presentation/views/widget/default_register_text.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_form_body.dart';
class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 45,
        ),
        child: Column(
          children: [
            DefaultRegisterText(),
            SizedBox(
              height: 90,
            ),
            RegisterFormBody(),
          ],
        ),
      ),
    );
  }
}
