import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardDescription extends StatelessWidget {
final String content;
CustomCardDescription({@required this.content});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            content,
            style: TextStyle(
              color: AppTheme.appTimeColor,
              fontWeight: AppTheme.appRegularFontWeight,
              fontStyle: AppTheme.appFontStyle,
              fontSize: AppTheme.appMediumFontSize,
            ),
          ),
        ),
    
      ],
    );
  }
}
