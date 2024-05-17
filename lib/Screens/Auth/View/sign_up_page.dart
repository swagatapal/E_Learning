import 'package:e_learning/Screens/Auth/View/login_page.dart';
import 'package:flutter/material.dart';
import '../../../Core/Utils/CommonWidget/common_button.dart';
import '../../../Core/Utils/CommonWidget/common_inputfield.dart';
import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Services/Auth/auth_service.dart';
import '../../CommonWidgets/common_heading_text.dart';
import '../../CommonWidgets/common_title_text.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();
  final TextEditingController _fullName = TextEditingController();
  final void Function()? onTap;

  SignUpPage({super.key, this.onTap});

  void register(BuildContext context) async {
    //get auth service
    final auth = AuthService();

    //passwords match -> create user
    if (_pwController.text == _confirmPwController.text) {
      try {
        auth.signUpWithEmailPassword(
          _emailController.text,
          _pwController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }

    //passwords don't match -> tell user to fix
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20, top: 50),
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
              heading: 'SIGN UP',
              subHeading:
                  'Create your account to embark on your educational adventure',
            ),
            // const SizedBox(height: 30),
            const CommonHeadingText(
              textName: 'Full Name',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: "Sidra Idrees ",
              controller: _fullName,
            ),
            const SizedBox(height: 10),
            const CommonHeadingText(
              textName: 'Email Here',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: "youremail@gmail.com ",
              controller: _emailController,
            ),
            const SizedBox(height: 10),
            const CommonHeadingText(
              textName: 'Password',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: " *************************",
              controller: _pwController,
              obscureText: true,
            ),
            const SizedBox(height: 10),
            const CommonHeadingText(
              textName: 'Confirm Password',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: " *************************",
              controller: _confirmPwController,
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CommonButton(
              // onClicked: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const HomeConfig()));
              // },
              onClicked: () => register(context),
              label: "SIGN UP",
              buttonHeight: containerWidth * 0.06,
              buttonWidth: containerWidth * 0.8,
              fontSize: 20,
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "--------- Or Sign Up with ---------",
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
            Image.asset("assets/images/facebook.png"),
            const SizedBox(height: 10),
            Image.asset("assets/images/google.png"),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogIn(),
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
                        text: 'Sign In here',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                      ),
                    ])),
              ),
            ),
            // const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
