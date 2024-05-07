import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../Core/Utils/Helper/screen_utils.dart';
import '../../Widgets/suggestions_item.dart';

class SeeAllSuggestions extends StatelessWidget {
  const SeeAllSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, bottom:  10.0 ),
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
            Expanded(
              child: GridView.count(

                crossAxisCount: 2,
                children: List.generate(
                  10,
                  (index) {
                    return const SuggestionsItem(
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
