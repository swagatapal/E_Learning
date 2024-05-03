import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                   height: containerWidth*0.7,
                  width: containerWidth*0.5,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onBackground,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(55)),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.onBackground,
                          spreadRadius: 3,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ]),
                ),
                Image.asset(
                  'assets/images/p2.png',
                   height: containerWidth*0.7,
                  width: containerWidth*0.5,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Engage with Expert Instructors",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground,
                fontFamily: 'Roboto'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Connect with knowledgeable tutors for personalized guidance.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}