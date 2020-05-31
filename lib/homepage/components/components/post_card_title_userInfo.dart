import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_unfollow_bottomsheet.dart';
import 'package:flutter/material.dart';

class CustomTitleUserInfo extends StatelessWidget {
  final AssetImage image;
  final String title;
  CustomTitleUserInfo({@required this.image, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(backgroundImage: image),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: AppTheme.appTimeColor,
                    fontSize: AppTheme.appMediumFontSize,
                    fontWeight: AppTheme.appBoldFontWeight,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Diagnosed Recently'.toUpperCase(),
                  style: TextStyle(
                    color: AppTheme.appLeadingColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          padding: EdgeInsets.only(
            left: 20,
          ),
          icon: Icon(Icons.more_vert),
          onPressed: () {
            showModalBottomSheet<void>(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.white,
                context: context,
                builder: (BuildContext context) {
                  return CustomUnfollowBottomSheet();
                });
          },
        ),
      ],
    );
  }
}
