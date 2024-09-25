import 'package:flutter/material.dart';
import 'package:my_todo/features/splash/presentation/views/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const SplashViewBody(),
    );
  }
}
