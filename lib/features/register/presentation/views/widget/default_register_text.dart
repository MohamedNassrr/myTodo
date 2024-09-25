import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/styles.dart';

class DefaultRegisterText extends StatelessWidget {
  const DefaultRegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        Text(
          'Welcome to myTodo!',
          style: Style.textStyle18,
        ),
        SizedBox(
          height: 31,
        ),
        SizedBox(
          width: 203,
          height: 40,
          child: Text(
            'Let’s get started to make up your tasks.',
            style: Style.textStyle13,
          ),
        ),
      ],
    );
  }
}
