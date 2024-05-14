import 'package:e_learning/Core/Utils/CommonWidget/common_button.dart';
import 'package:e_learning/Core/Utils/CommonWidget/common_inputfield.dart';
import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:e_learning/Screens/Home/Home/Widgets/category_item.dart';
import 'package:e_learning/Screens/Payment/Widgets/overview_section.dart';
import 'package:e_learning/Screens/Payment/Widgets/select_payment_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CourseContent/View/course_content.dart';

class PaymentOverview extends StatefulWidget {
  const PaymentOverview({super.key});

  @override
  _PaymentOverview createState() => _PaymentOverview();
}

class _PaymentOverview extends State<PaymentOverview> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: currentStep,
          elevation: 0,
          connectorColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.primaryButtonColor; // Color for selected state
              }
              return Colors.grey; // Color for default state
            },
          ),
          connectorThickness: 0,
          onStepCancel: () => currentStep == 0
              ? null
              : setState(() {
                  currentStep -= 1;
                }),
          onStepContinue: () {
            bool isLastStep = (currentStep == getSteps().length - 1);
            if (isLastStep) {
              //Do something with this information
            } else {
              setState(() {
                currentStep += 1;
              });
            }
          },
          onStepTapped: (step) => setState(() {
            currentStep = step;
          }),
          steps: getSteps(),
          controlsBuilder:
              (BuildContext context, ControlsDetails? controlsDetails) {
            return Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CommonButton(
                onClicked: () {
                  bool isLastStep = (currentStep == getSteps().length - 1);
                  if (isLastStep) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CourseContent()),
                    );
                  } else {
                    controlsDetails?.onStepContinue?.call();
                  }
                },
                label: "Continue",
              ),
            );
          },
        ),
      ),
    );
  }

  List<Step> getSteps() {
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        label: Text(
          "Overview",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 10,
            color: currentStep >= 0
                ? AppColors.primaryButtonColor
                : AppColors.colorSecondaryText2,
          ),
        ),
        title: const Text(""),
        content: const Column(
          children: [
            OverViewSection(),
          ],
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text(""),
        label: Text(
          "Payment Method",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 10,
            color: currentStep >= 1
                ? AppColors.primaryButtonColor
                : AppColors.colorSecondaryText2,
          ),
        ),
        content: const Column(
          children: [
            SelectPaymentMethod(),
          ],
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text(""),
        label: Text(
          "Add Card Details",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 10,
            color: currentStep >= 2
                ? AppColors.primaryButtonColor
                : AppColors.colorSecondaryText2,
          ),
        ),
        content: const Column(
          children: [
            AddCardSection(),
          ],
        ),
      ),
      Step(
        state: currentStep > 3 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 3,
        title: const Text(""),
        label: Text(
          "Completed",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 10,
            color: currentStep >= 3
                ? AppColors.primaryButtonColor
                : AppColors.colorSecondaryText2,
          ),
        ),
        content: const Column(
          children: [
            CompletedSection(),
          ],
        ),
      ),
    ];
  }
}




class AddCardSection extends StatefulWidget {
  const AddCardSection({super.key});

  @override
  State<AddCardSection> createState() => _AddCardSectionState();
}

class _AddCardSectionState extends State<AddCardSection> {
  @override
  Widget build(BuildContext context) {
    double wid = ScreenUtils().screenWidth(context);

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
          SizedBox(
            height: wid * 0.2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/money-dollar-circle-fill.png",
                  height: 20,
                  width: 20,
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
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "35\$",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: ScreenUtils().screenWidth(context),
            height: 1,
            color: AppColors.primaryButtonColor,
          )
        ],
      ),
    );
  }
}

class CompletedSection extends StatelessWidget {
  const CompletedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: ScreenUtils().screenWidth(context),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/correctImg.png",
            height: 60,
            width: 60,
          ),
          Image.asset(
            "assets/images/congratsImg.png",
            height: 300,
            width: 250,
          ),
          Text(
            "Congratulations!",
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          Text(
            "Start Your Learning Today",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.onBackground),
          )
        ],
      ),
    );
  }
}
