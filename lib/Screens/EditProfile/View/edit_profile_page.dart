import 'package:e_learning/Screens/EditProfile/Widgets/profile_picture.dart';
import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              Text(
                "Edit your Profile",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto'),
              ),
              // const ProfilePicture(),
            ],
          ),
        ),
      ),
    );
  }
}
