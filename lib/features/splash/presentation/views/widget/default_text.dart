import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/styles.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Gets things with TODs',
          style: Style.textStyle18,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Welcome to myTodo App',
          style: Style.textStyle13.copyWith(),
        ),
      ],
    );
  }
}
