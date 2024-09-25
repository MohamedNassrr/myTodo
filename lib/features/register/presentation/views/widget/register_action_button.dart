import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/styles.dart';

class RegisterActionButton extends StatelessWidget {
  const RegisterActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 60,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff50C2C9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          'Register',
          style: Style.textStyle18.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}