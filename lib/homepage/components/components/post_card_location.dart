import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardLocation extends StatelessWidget {
  const CustomCardLocation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.place,
          color: AppTheme.appLeadingColor,
        ),
        Text(
          'Peninsula Park, Andheri, Mumbai',
          style: TextStyle(
            color: AppTheme.appLeadingColor,
          ),
        ),
      ],
    );
  }
}

