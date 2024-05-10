import 'package:e_learning/Core/Utils/Helper/app_colors.dart';
import 'package:e_learning/Core/Utils/Helper/screen_utils.dart';
import 'package:e_learning/Screens/Home/Home/Widgets/category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class PaymentOverview extends StatefulWidget {
//   const PaymentOverview({super.key});
//
//   @override
//   State<PaymentOverview> createState() => _PaymentOverviewState();
// }
//
// class _PaymentOverviewState extends State<PaymentOverview> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding:
//             const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20, top: 60),
//         child: Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Image.asset(
//                 "assets/images/arrow-back.png",
//                 height: 30,
//                 width: 30,
//               ),
//             ),
//             const FormPage(),
//
//
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }

class PaymentOverview extends StatefulWidget {
  const PaymentOverview({Key? key}) : super(key: key);

  @override
  _PaymentOverview createState() => _PaymentOverview();
}

class _PaymentOverview extends State<PaymentOverview> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Stepper(
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
          )),
    );
  }

  List<Step> getSteps() {
    return <Step>[
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: const Text("Account Info"),
        content: const Column(
          children: [
            CustomInput(
              hint: "First Name",
              inputBorder: OutlineInputBorder(),
            ),
          ],
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text("Address"),
        content: Column(
          children: const [
            CustomInput(
              hint: "City and State",
              inputBorder: OutlineInputBorder(),
            ),

          ],
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("Misc"),
        content: Column(
          children: const [
            CustomInput(
              hint: "Bio",
              inputBorder: OutlineInputBorder(),
            ),
          ],
        ),
      ),
    ];
  }
}

class CustomInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String? hint;
  final InputBorder? inputBorder;
  const CustomInput({super.key, this.onChanged, this.hint, this.inputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: ScreenUtils().screenWidth(context),
      // color: Colors.blue,
      child: Column(
        children: [
           Text("OverView", style: TextStyle(
            fontSize:20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onBackground
          ),),
          RichText(
            text: const TextSpan(
              text: "Course Name:",
              style: TextStyle(
                  color: AppColors.primaryButtonColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto'),
              children: <TextSpan>[
                TextSpan(
                  text: 'Typography and Layout Design',
                  style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
          ),

          const CourseItem(
            image: "assets/images/lecture.png",
            leadingText: "Lectures",
          ),
          const CourseItem(
            image: "assets/images/lecture.png",
            leadingText: "Lectures",
          ),
          const CourseItem(
            image: "assets/images/lecture.png",
            leadingText: "Lectures",
          ),

          Text(
            "Skills",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const Row(
            children: [
              CategoryItem(text: "Typography"),
              CategoryItem(text: "Layout composition"),
            ],
          ),
          const Row(
            children: [
              CategoryItem(text: "Visual communication"),
              CategoryItem(text: "Editorial design"),
            ],
          ),

          Row(
            children: [
              Image.asset("assets/images/money-dollar-circle-fill.png", height: 20,width: 20,),
              Text("Total Price"),
              Text("35\$")
            ],
          ),


        ],
      ),
      // TextField(
      //   onChanged: (v) => onChanged!(v),
      //   decoration: InputDecoration(hintText: hint!, border: inputBorder),
      // ),
    );
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
                color: AppColors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto'),
          ),
        ],
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  final Function? callback;
  final Widget? title;
  const CustomBtn({super.key, this.title, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          color: Colors.blue,
          child: TextButton(
            onPressed: () => callback!(),
            child: title!,
          ),
        ),
      ),
    );
  }
}
