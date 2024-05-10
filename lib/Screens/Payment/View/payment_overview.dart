import 'package:flutter/material.dart';

class PaymentOverview extends StatefulWidget {
  const PaymentOverview({super.key});

  @override
  State<PaymentOverview> createState() => _PaymentOverviewState();
}

class _PaymentOverviewState extends State<PaymentOverview> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20, top: 60),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/images/arrow-back.png",
                height: 30,
                width: 30,
              ),
            ),



          ],
        ),
      ),
    );
  }
}

