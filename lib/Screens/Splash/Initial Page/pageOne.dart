import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: containerWidth * 0.68,
                    width: containerWidth * 0.5,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onBackground,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(52)),
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
                    'assets/images/p4.png',
                    height: containerWidth * 0.75,
                    width: containerWidth * 0.57,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Enter the World of E-Learning",
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
              "Begin your educational journey with access to a diverse range of courses.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
