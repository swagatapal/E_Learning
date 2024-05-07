import 'package:flutter/material.dart';

import '../../../../Core/Utils/Helper/screen_utils.dart';
import '../../Widgets/category_item.dart';

class SeeAllCategories extends StatelessWidget {
  const SeeAllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Categories")),
      body: SizedBox(
        height: ScreenUtils().screenWidth(context) * 5.5,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 8.0,
          ),
          padding: const EdgeInsets.all(8.0),
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CategoryItem(
              text: 'Logitech Mouse',
            );
          },
        ),
      ),
    );
  }
}
