import 'package:flutter/material.dart';

import '../../../Core/Utils/CommonWidget/common_inputfield.dart';
import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';

class AddCardSection extends StatefulWidget {
  const AddCardSection({super.key});

  @override
  State<AddCardSection> createState() => _AddCardSectionState();
}

class _AddCardSectionState extends State<AddCardSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: ScreenUtils().screenWidth(context),
      child: Column(
        children: [
          Text(
            "Add Card Details",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CommonTextFormField(
            hintText: "Card Number",
          ),
          const SizedBox(
            height: 10,
          ),
          CommonTextFormField(
            hintText: "CVV Number",
          ),
          const SizedBox(
            height: 10,
          ),
          CommonTextFormField(
            hintText: "Expiry Date",
          ),
          const SizedBox(
            height: 10,
          ),
          CommonTextFormField(
            hintText: "Name on Card",
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "We will store and use your card details for smooth and secure future purchases.  ",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: AppColors.colorSecondaryText2),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/money-dollar-circle-fill.png",
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "35\$",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 1,
            color: AppColors.primaryButtonColor,
          )
        ],
      ),
    );
  }
}
