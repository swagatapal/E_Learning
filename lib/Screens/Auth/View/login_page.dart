import 'package:e_learning/Core/Utils/CommonWidget/common_button.dart';
import 'package:e_learning/Core/Utils/CommonWidget/common_inputfield.dart';
import 'package:e_learning/Screens/CommonWidgets/common_heading_text.dart';
import 'package:e_learning/Screens/CommonWidgets/common_title_text.dart';
import 'package:e_learning/Screens/Auth/View/reset_password.dart';
import 'package:e_learning/Screens/Auth/View/sign_up_page.dart';
import 'package:e_learning/Screens/Home/Home/View/home_config.dart';
import 'package:e_learning/core/utils/helper/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../Services/Auth/auth_service.dart';

class LogIn extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  final void Function()? onTap;

  LogIn({super.key, this.onTap});

  void login(BuildContext context) async {
    //auth service
    final authService = AuthService();

    //try login
    try {
      await authService.signInWithEmailPassword(
        _emailController.text,
        _pwController.text,
      );
    }

    //catch any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential authResult =
            await _auth.signInWithCredential(credential);
        final User? user = authResult.user as User?;

        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (context) => HomeConfig(
              user: User(
                email: user?.email ?? "",
                fullName: user?.fullName ?? '',
                photoUrl: user?.photoUrl ?? "",
              ),
            ),
          ),
        );
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error signing in with Google: $error");
      }
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
            const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20, top: 80),
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
              controller: _emailController,
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
              controller: _pwController,
              obscureText: true,
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
            const SizedBox(height: 20),
            CommonButton(
              onClicked: () => login(context),
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
            Image.asset(
              "assets/images/facebook.png",
            ),
            const SizedBox(
              height: 10,
            ),
            Bounce(
                onPressed: () {
                  signInWithGoogle(context);
                },
                duration: const Duration(milliseconds: 500),
                child: Image.asset("assets/images/google.png")),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
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
            // const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class User {
  final String email;
  final String fullName;
  final String? photoUrl; // Profile image URL

  User({
    required this.email,
    required this.fullName,
    this.photoUrl,
  });
}
