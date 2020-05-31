import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTitle extends StatelessWidget {
  final String description;
  CustomCardTitle({this.description});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          description,
          style: TextStyle(
            color: AppTheme.appTimeColor,
            fontSize: AppTheme.appMediumFontSize,
            fontWeight: AppTheme.appBoldFontWeight,
          ),
        ),
      ],
    );
  }
}



