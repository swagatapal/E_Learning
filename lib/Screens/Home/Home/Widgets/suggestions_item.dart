import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import '../../../../Core/Utils/Helper/app_colors.dart';
import '../../../../Core/Utils/Helper/screen_utils.dart';

class SuggestionsItem extends StatelessWidget {
  final String image;
  final String title;
  final void Function()? onTap;
  final String subtitle;
  final String rating;

  const SuggestionsItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating, 
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(milliseconds: 200),
            onPressed: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
              if (onTap != null) onTap!();
            },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 10),
        child: Container(
          width: ScreenUtils().screenWidth(context) * 0.4,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                // color:  Colors.blueGrey.withOpacity(0.4),
                color: AppColors.colorSecondaryText2.withOpacity(0.2),
                offset: const Offset(0.0, 3.0),
                blurRadius: 8.0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      image,
                      height: 100,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, right: 6),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Center(
                            child: Image.asset(
                          "assets/images/bookmark2.png",
                          height: 25,
                          width: 15,
                        )),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColors.primaryButtonColor,
                          fontSize: 8,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          rating,
                          style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 10,
                              color: AppColors.primaryButtonColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
