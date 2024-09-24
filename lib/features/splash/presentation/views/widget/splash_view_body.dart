import 'package:flutter/material.dart';
import 'package:my_todo/core/utils/assets_data.dart';
import 'package:my_todo/features/splash/presentation/views/widget/custom_action_button.dart';
import 'package:my_todo/features/splash/presentation/views/widget/default_text.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 82,
              right: 94,
              top: 218,
            ),
            child: Image.asset(AssetsData.splashImage),
          ),
          const SizedBox(
            height: 65,
          ),
          const DefaultText(),
          const SizedBox(
            height: 136,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 23,
              right: 27,
            ),
            child: CustomActionButton(),
          ),
        ],
      ),
    );
  }
}
