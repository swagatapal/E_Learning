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
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 15.0, right: 15.0),
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
                    "Suggestions for You",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
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
