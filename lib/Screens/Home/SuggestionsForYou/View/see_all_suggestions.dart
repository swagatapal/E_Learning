import 'package:flutter/material.dart';

import '../../../../Core/Utils/Helper/screen_utils.dart';
import '../../Widgets/suggestions_item.dart';

class SeeAllSuggestions extends StatelessWidget {
  const SeeAllSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Suggestions for You")),
      body: SizedBox(
        height: ScreenUtils().screenWidth(context) * 4,
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
    );
  }
}
