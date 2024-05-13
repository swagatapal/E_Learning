import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/add_card_details.dart';
import '../Widgets/completed_section.dart';
import '../Widgets/overview_section.dart';
import '../Widgets/select_payment_method.dart';

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
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: currentStep,
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
      ),
    );
  }

  List<Step> getSteps() {
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
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
        title: const Text("A"),
        content: const Column(
          children: [
            SelectPaymentMethod(),
          ],
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("A"),
        content: const Column(
          children: [
            AddCardSection(),
          ],
        ),
      ),
      Step(
        state: currentStep > 3 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 3,
        title: const Text("M"),
        content: const Column(
          children: [
            CompletedSection(),
          ],
        ),
      ),
    ];
  }
}

class CourseItem extends StatelessWidget {
  final String image;
  final String leadingText;

  const CourseItem({super.key, required this.image, required this.leadingText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 20,
            width: 15,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            leadingText,
            style: const TextStyle(
                color: AppColors.colorSecondaryText2,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto'),
          ),
        ],
      ),
    );
  }
}
