import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_todo/constants.dart';
import 'package:my_todo/core/utils/app_router.dart';
import 'package:my_todo/core/utils/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: mainBackgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: mainBackgroundColor,
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
