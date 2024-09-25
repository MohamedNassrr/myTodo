import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/core/utils/components.dart';
import 'package:my_todo/features/login/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:my_todo/features/login/presentation/view_models/login_cubit/login_states.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginStates>(
        builder: (context, state) {

          var cubit = LoginCubit.get(context);

          return  Padding(
            padding: const EdgeInsets.only(left: 24, right: 26),
            child: Column(
              children: [
                registerFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Email must\'t be empty';
                    }
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
              ],
            ),
          );
        },
      ),
    );
  }
}
