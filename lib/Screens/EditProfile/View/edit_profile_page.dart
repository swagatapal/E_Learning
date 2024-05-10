import 'package:e_learning/Screens/EditProfile/Widgets/profile_picture.dart';
import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 14.0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "My Profile",
                  style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
                const ProfilePicture(),
                Text(
                  "Sidara Idrees",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
                const Text(
                  "youremail110@gmail.com",
                  style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30.0,bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Edit Your Payment Method",
                        style: TextStyle(
                            color: AppColors.primaryButtonColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                      InkWell(
                        child: Image.asset(
                          "assets/images/edit-fill.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: ScreenUtils().screenWidth(context),
                  color: AppColors.primaryButtonColor,
                ),
                const SizedBox(height: 15.0,),
                const Text(
                  "Progress",
                  style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  "Your Certificate is Ready",
                  style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
