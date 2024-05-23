import 'package:e_learning/Screens/Auth/View/login_page.dart';
import 'package:e_learning/Screens/EditProfile/View/edit_profile_page.dart';
import 'package:e_learning/Screens/PolicyAndTermsAndConditions/View/policy.dart';
import 'package:e_learning/Screens/PolicyAndTermsAndConditions/View/terms_and_conditions.dart';
import 'package:e_learning/Screens/Profile/Widgets/profile_details.dart';
import 'package:e_learning/Screens/Profile/Widgets/profile_information.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';
import '../../../Services/Auth/auth_service.dart';
import '../../Payment/View/payment_overview.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  Future<void> _handleSignOut() async {
    try {
      await googleSignIn.signOut();
      // Optionally clear local user data
    } catch (error) {
      print('Error signing out: $error');
    }
  }

  void _logout() async {
    await _handleSignOut();
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) =>  LogIn()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "My Profile",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(height: 20.0),
              ProfileInformation(
                name: 'Sidra Idrees',
                email: 'youremail@gmail.com',
                image: 'assets/images/testImage3.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const EditProfilePage(), //const EditProfilePage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 1,
                width: ScreenUtils().screenWidth(context),
                color: AppColors.primaryButtonColor,
              ),
              const SizedBox(height: 50.0),
              ProfileDetails(
                categoryName: "Payment Method",
                image: "assets/images/payment.png",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PaymentOverview(), //const EditProfilePage(),
                    ),
                  );
                },
              ),
              const ProfileDetails(
                categoryName: "My Certificates",
                image: "assets/images/certificate-fill.png",
              ),
              const ProfileDetails(
                categoryName: "Help Center",
                image: "assets/images/help_center-fill.png",
              ),
              const ProfileDetails(
                categoryName: "Invite Friends",
                image: "assets/images/invite_friend-fill.png",
              ),
              ProfileDetails(
                categoryName: "Log out",
                image: "assets/images/logout-fill.png",
                //onTap: _logout,
                onTap:logout,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: RichText(
                  text: TextSpan(
                    text: "Privacy Policy •",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Policy()));
                      },
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Roboto'),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Terms and Conditions',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TermsAndConditions()));
                          },
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.w300,
                            fontSize: 13.0,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
