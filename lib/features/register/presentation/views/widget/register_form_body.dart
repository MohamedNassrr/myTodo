import 'package:flutter/material.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_action_button.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_form_field.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_text_button.dart';

class RegisterFormBody extends StatelessWidget {
  const  RegisterFormBody({super.key});

  @override
  Widget build(BuildContext context) {

    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    return Column(
      children: [
        RegisterFormField(
          controller: nameController,
          type: TextInputType.text,
          validate: (value) {
            if (value!.isEmpty) {
              return 'name mus\'t be empty';
            }
            return null;
          },
          hint: 'Enter your full name',
        ),
        const SizedBox(
          height: 30,
        ),
        RegisterFormField(
          controller: emailController,
          type: TextInputType.emailAddress,
          validate: (value) {
            if (value!.isEmpty) {
              return 'email mus\'t be empty';
            }
            return null;
          },
          hint: 'Enter your Email',
        ),
        const SizedBox(
          height: 30,
        ),
        RegisterFormField(
          controller: passwordController,
          type: TextInputType.visiblePassword,
          validate: (value) {
            if (value!.isEmpty) {
              return 'password is too short';
            }
            return null;
          },
          suffix: Icons.visibility_off_outlined,
          suffixPressed: () {

          },
          hint: 'Enter Password',
        ),
        const SizedBox(
          height: 30,
        ),
        RegisterFormField(
          controller: confirmPasswordController,
          type: TextInputType.visiblePassword,
          validate: (value) {
            if (value!.isEmpty) {
              return 'password did\'t match';
            }
            return null;
          },
          suffix: Icons.visibility_off_outlined,
          suffixPressed: () {

          },
          hint: 'Confirm Password',
        ),
        const SizedBox(
          height: 63,
        ),
        const RegisterActionButton(),
        const SizedBox(
          height: 10,
        ),
        const RegisterTextButton(),
      ],
    );
  }
}
