import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTitleHeading extends StatelessWidget {
final String heading;
final String subheading;

CustomCardTitleHeading({this.heading,this.subheading});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          heading,
          style: TextStyle(
            color: AppTheme.appCardTitleColor,
            fontSize: AppTheme.appMediumFontSize,
          ),
        ),
        Text(
         subheading,
          style: TextStyle(
            color: AppTheme.appTimeColor,
            fontSize: AppTheme.appMediumFontSize,
          ),
        ),
      ],
    );
  }
}

