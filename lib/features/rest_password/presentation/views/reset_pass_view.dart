import 'package:flutter/material.dart';
import 'package:my_todo/features/rest_password/presentation/views/widgets/reset_pass_view_body.dart';

class ResetPassView extends StatelessWidget {
  const ResetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ResetPassViewBody(),
    );
  }
}
