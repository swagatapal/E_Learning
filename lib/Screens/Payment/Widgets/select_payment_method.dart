import 'package:flutter/material.dart';

import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';

class SelectPaymentMethod extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const SelectPaymentMethod({Key? key});

  @override
  State<SelectPaymentMethod> createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: ScreenUtils().screenWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Payment Method",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RadioListTile<int>(
                value: 0,
                activeColor: AppColors.primaryButtonColor,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
                title: const Text(
                  "Credit / Debit Card",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: AppColors.colorSecondaryText2,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 40,
                      width: 70,
                      child: Image.asset(
                        "assets/images/Mastercard.png",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                      height: 40,
                      width: 70,
                      child: Image.asset(
                        "assets/images/Maestro.png",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                      height: 40,
                      width: 70,
                      child: Image.asset(
                        "assets/images/PayPal.png",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                      height: 40,
                      width: 70,
                      child: Image.asset(
                        "assets/images/Visa.png",
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          RadioListTile<int>(
            value: 1,
            activeColor: AppColors.primaryButtonColor,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
            title: const Text(
              'JazzCash / EasyPaisa ',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: AppColors.colorSecondaryText2,
              ),
            ),
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
