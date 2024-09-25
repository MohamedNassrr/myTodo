import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/components.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_field_builder.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_text_button.dart';

class RegisterFormBody extends StatelessWidget {
  const RegisterFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RegisterFieldBuilder(),
        defaultButton(
          width: 380,
          height: 60,
          onPressed: () {},
          text: 'Register',
        ),
        const RegisterTextButton(),
      ],
    );
  }
}
