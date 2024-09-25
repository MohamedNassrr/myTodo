import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/core/utils/components.dart';
import 'package:my_todo/features/register/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:my_todo/features/register/presentation/view_models/register_cubit/register_states.dart';

class RegisterFieldBuilder extends StatelessWidget {
  const RegisterFieldBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit,RegisterStates>(
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          return Column(
            children: [
              registerFormField(
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
              registerFormField(
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
              registerFormField(
                controller: passwordController,
                isPassword: cubit.isPassword,
                type: TextInputType.visiblePassword,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'password is too short';
                  }
                  return null;
                },
                suffix: cubit.suffix,
                suffixPressed: () {
                  cubit.changePasswordVisibility();
                },
                hint: 'Enter Password',
              ),
              const SizedBox(
                height: 30,
              ),
              registerFormField(
                controller: confirmPasswordController,
                isPassword: cubit.isPassword,
                type: TextInputType.visiblePassword,
                validate: (value) {
                  if (value != passwordController.text) {
                    return 'password did\'t match';
                  }
                  return null;
                },
                suffix: cubit.suffix,
                suffixPressed: () {
                  cubit.changePasswordVisibility();
                },
                hint: 'Confirm Password',
              ),
              const SizedBox(
                height: 63,
              ),
            ],
          );
        },

      ),
    );
  }
}
