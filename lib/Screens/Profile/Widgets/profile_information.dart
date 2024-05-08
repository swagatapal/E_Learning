import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../Core/Utils/Helper/app_colors.dart';

class ProfileInformation extends StatelessWidget {
  final String name;
  final String email;
  final String image;

  const ProfileInformation(
      {super.key,
      required this.name,
      required this.email,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16.0),

        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        fontSize: 22,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                        color: AppColors.colorSecondaryText2,
                        fontFamily: "Roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/edit.png",
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),


      ],
    );
  }
}
