import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/core/utils/app_router.dart';
import 'package:my_todo/core/utils/styles.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 60,
      child: TextButton(
        onPressed: () {
          GoRouter.of(context).pushReplacement(AppRouter.kRegisterView);
        },
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff50C2C9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          'Get Started',
          style: Style.textStyle18.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}