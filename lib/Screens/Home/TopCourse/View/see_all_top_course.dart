import 'package:flutter/material.dart';
import '../../Widgets/suggestions_card.dart';

class SeeAllTopCourse extends StatelessWidget {
  const SeeAllTopCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0 ,top: 10.0),
              child: Row(
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
                  const SizedBox(width: 10.0),
                  Text(
                    "Top Courses",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0,),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
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
          ],
        ),
      ),
    );
  }
}
