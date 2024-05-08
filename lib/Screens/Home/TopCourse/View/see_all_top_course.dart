import 'package:e_learning/Core/Utils/CommonWidget/common_header.dart';
import 'package:flutter/material.dart';
import '../../Home/Widgets/suggestions_card.dart';

class SeeAllTopCourse extends StatelessWidget {
  const SeeAllTopCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // padding: const EdgeInsets.only(top: 40, bottom: 10.0, left: 15.0, right: 15.0),
        padding: const EdgeInsets.only(right: 20.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonHeader(
              headingName: "Top Course",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.80,
                  children: List.generate(
                    10,
                    (index) {
                      return const SuggestionsCard(
                        image: 'assets/images/testImage1.png',
                        title: 'Branding and Identity Design',
                        subtitle: 'Innovation and Design School',
                        rating: '4.9',
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
