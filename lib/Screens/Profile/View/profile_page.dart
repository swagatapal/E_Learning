import 'package:e_learning/Screens/Profile/Widgets/profile_details.dart';
import 'package:e_learning/Screens/Profile/Widgets/profile_information.dart';
import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              const ProfileInformation(
                name: 'Sidra Idrees',
                email: 'youremail@gmail.com',
                image: 'assets/images/testImage3.png',
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 1,
                width: ScreenUtils().screenWidth(context),
                color: AppColors.primaryButtonColor,
              ),
              const SizedBox(height: 50.0),
              const ProfileDetails(
                categoryName: "Payment Method",
                image: "assets/images/payment.png",
              ),
              const ProfileDetails(
                categoryName: "My Certificates",
                image: "assets/images/certificate.png",
              ),
              const ProfileDetails(
                categoryName: "Help Center",
                image: "assets/images/help_center.png",
              ),
              const ProfileDetails(
                categoryName: "Invite Friends",
                image: "assets/images/invite_friend.png",
              ),
              const ProfileDetails(
                categoryName: "Log out",
                image: "assets/images/logout.png",
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Privacy Policy • Terms and Conditions",
                  style: TextStyle(
                    color: AppColors.colorSecondaryText2,
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
