import 'package:flutter/material.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_action_button.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_field_builder.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_text_button.dart';

class RegisterFormBody extends StatelessWidget {
  const RegisterFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RegisterFieldBuilder(),
        RegisterActionButton(),
        RegisterTextButton(),
      ],
    );
  }
}
