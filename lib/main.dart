import 'package:ferry_easy/constants/constants.dart';
import 'package:ferry_easy/presentation/screens/log_in_sign_up_screen.dart';
import 'package:ferry_easy/presentation/screens/splash_screen.dart';
import 'package:ferry_easy/presentation/screens/welcome_back_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(defaultPadding),
          ),
        ),
      ),
      home: const WelcomeBackLogin(),
    );
  }
}
