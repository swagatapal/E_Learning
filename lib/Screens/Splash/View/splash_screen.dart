import 'dart:async';
import 'package:flutter/material.dart';
import '../Widgets/initial_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => InitialHome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        body: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splash.png',
                height: 200,
                width: 250,
              ),
              Image.asset(
                'assets/images/splash_text.png',
                width: 300,
              )
            ],
          ),
        ));
  }
}
