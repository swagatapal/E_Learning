import 'package:flutter/material.dart';
import '../../../Core/Utils/CommonWidget/common_button.dart';
import '../../../Core/Utils/CommonWidget/common_inputfield.dart';
import '../../Home/Home/View/home_config.dart';
import '../../CommonWidgets/common_heading_text.dart';
import '../../CommonWidgets/common_title_text.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/images/arrow-back.png",
                  height: 30,
                  width: 30,
                )),
            const SizedBox(height: 60),
            const CommonTitleText(
              heading: 'Reset Password',
              subHeading:
                  'Reset your password to regain access to your learning journey',
            ),
            const SizedBox(
              height: 30,
            ),
            const CommonHeadingText(
              textName: 'New Password',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: " *************************",
            ),
            const SizedBox(height: 20),
            const CommonHeadingText(
              textName: 'Confirm Password',
            ),
            const SizedBox(height: 5),
            CommonTextFormField(
              hintText: " *************************",
            ),
            const SizedBox(
              height: 20,
            ),
            CommonButton(
              onClicked: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeConfig()));
              },
              label: "SAVE ",
              buttonHeight: containerWidth * 0.06,
              buttonWidth: containerWidth * 0.8,
              fontSize: 20,
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
