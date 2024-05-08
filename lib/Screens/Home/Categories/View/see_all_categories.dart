import 'package:e_learning/Core/Utils/CommonWidget/common_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../Core/Utils/Helper/screen_utils.dart';
import '../../Widgets/category_item.dart';

class SeeAllCategories extends StatelessWidget {
  const SeeAllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            const CommonHeader(headingName: 'Categories',),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3,
                children: List.generate(
                  9,
                  (index) {
                    return const CategoryItem(
                      text: 'Logitech Mouse',
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
