import 'package:e_learning/Screens/Splash/View/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Services/Auth/auth_gate.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      title: "E Learning",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.grey.shade100,
              onBackground: const Color(0xFF00434C),
              primary: const Color(0xFF00B2E7),
              secondary: const Color(0xFFE064F7),
              tertiary: const Color(0xFFFF8D6C),
              outline: Colors.grey)),
      // home: const SplashScreen(),
    );
  }
}
