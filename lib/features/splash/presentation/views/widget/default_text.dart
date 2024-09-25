import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/styles.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Gets things with TODs',
          style: Style.textStyle18,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Welcome to myTodo App',
          style: Style.textStyle13,
        ),
      ],
    );
  }
}
