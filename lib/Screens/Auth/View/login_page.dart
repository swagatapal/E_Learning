import 'package:e_learning/Core/Utils/CommonWidget/common_button.dart';
import 'package:e_learning/Core/Utils/CommonWidget/common_inputfield.dart';
import 'package:e_learning/Screens/Auth/View/common_heading_text.dart';
import 'package:e_learning/Screens/Auth/View/common_title_text.dart';
import 'package:e_learning/Screens/Auth/View/reset_password.dart';
import 'package:e_learning/Screens/Auth/View/sign_up_page.dart';
import 'package:e_learning/Screens/home/View/home_config.dart';
import 'package:e_learning/core/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, right: 20.0, bottom: 20, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/images/arrow-back.png",
                  height: 30,
                  width: 30,
                )),
            const CommonTitleText(
              heading: 'SIGN IN',
              subHeading:
                  'Sign in to access your personalized learning journey',
            ),
            const SizedBox(
              height: 30,
            ),
            const CommonHeadingText(
              textName: 'Email Here',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: " youremail@gmail.com",
            ),
            const SizedBox(
              height: 10,
            ),
            const CommonHeadingText(
              textName: 'Password',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: " *************************",
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPassword(),
                    ),
                  );
                },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.colorSecondaryText2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CommonButton(
              onClicked: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeConfig()));
              },
              label: "SIGN IN ",
              buttonHeight: containerWidth * 0.06,
              buttonWidth: containerWidth * 0.8,
              fontSize: 20,
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "--------- Or Sign In with ---------",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/facebook.png", ),
            const SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/google.png"),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: RichText(
                    text: TextSpan(
                        text: 'Don’t have an  Account? ',
                        style: const TextStyle(
                            color: AppColors.colorSecondaryText2,
                            fontSize: 14.0,
                            fontFamily: 'Roboto'),
                        children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up here',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                      ),
                    ])),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
