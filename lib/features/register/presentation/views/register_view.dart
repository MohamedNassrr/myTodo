import 'package:flutter/material.dart';
import 'package:my_todo/features/register/presentation/views/widget/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const RegisterViewBody(),
    );
  }
}
