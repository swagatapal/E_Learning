import 'package:flutter/material.dart';
import '../../../Core/Utils/Helper/app_colors.dart';
import '../../../Core/Utils/Helper/screen_utils.dart';

class Week extends StatefulWidget {
  final String weekNo;
  final Function(int) onWeekSelected;


  const Week({super.key, required this.weekNo, required this.onWeekSelected});

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtils().screenHeight(context) * 0.05,
      width: ScreenUtils().screenWidth(context) * 0.1,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          bool isSelected = _selectedIndex == index;
          return InkWell(
            onTap: (){
              setState(() {
                _selectedIndex = index;
              });
              widget.onWeekSelected(index);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 15.0),
              decoration: BoxDecoration(
                color:isSelected ? AppColors.primaryButtonColor : Colors.grey.withOpacity(0.1),
                border: Border.all(color: AppColors.primaryButtonColor),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    widget.weekNo,
                    style:  TextStyle(
                        color: isSelected ? AppColors.white : AppColors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
