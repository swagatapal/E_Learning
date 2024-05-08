import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final String image;
  final String categoryName;

  const ProfileDetails(
      {super.key, required this.categoryName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 20.0),
              Text(
                categoryName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    fontSize: 17,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 18.0,
            color: AppColors.primaryButtonColor,
          ),
        ],
      ),
    );
  }
}
