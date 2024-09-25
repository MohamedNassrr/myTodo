import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/styles.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({
    super.key,
    required this.constantText,
    required this.variableText,
    this.textStyling,
    required this.onPressed,
  });

  final String constantText;
  final String variableText;
  final TextStyle? textStyling;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          constantText,
          style: Style.textStyle16,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            variableText,
            style: textStyling,
          ),
        ),
      ],
    );
  }
}
