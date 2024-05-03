import 'package:e_learning/Core/Utils/CommonWidget/common_inputfield.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 150,),
          CommonTextFormField(),
        ],
      ),
    );
  }
}
