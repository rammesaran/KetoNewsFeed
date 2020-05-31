import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String inputText;
  CategoryChip({@required this.inputText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: ChoiceChip(
        selectedColor: Color(0xffCCEEE6),
        labelStyle: TextStyle(
          color: AppTheme.appLeadingColor,
        ),
        label: Text(inputText),
        selected: true,
      ),
    );
  }
}
