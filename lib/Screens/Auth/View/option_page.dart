import 'package:e_learning/Core/Utils/CommonWidget/common_button.dart';
import 'package:e_learning/Screens/Auth/View/login_page.dart';
import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/options.png',
                height: containerWidth * 0.7,
                width: containerWidth * 0.5,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Unlock Your Learning Potential',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontFamily: 'Roboto'),
            ),
            const SizedBox(height: 15),
            const Text(
              'Your gateway to personalized courses, And guidance for success.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonButton(
                  onClicked: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogIn(),
                  ),
                );
                  },
                  label: 'SIGN IN',
                  buttonHeight: containerWidth * 0.13,
                  buttonWidth: containerWidth * 0.38,
                ),
                CommonButton(
                  onClicked: () {},
                  label: 'SIGN UP',
                  buttonHeight: containerWidth * 0.13,
                  buttonWidth: containerWidth * 0.38,
                  solidColor: Colors.grey.shade100,
                  labelColor: const Color(0xff00434C),
                  borderColor: const Color(0xff00434C),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
