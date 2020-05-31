import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_comments.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_description.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_footer.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_location.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_title_heading.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_title_userInfo.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_fb_like_button.dart';
import 'package:flutter/material.dart';

class DietCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            CustomCardTitleHeading(
              heading: "DIET",
              subheading: '1min',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTitleUserInfo(
              image: AssetImage('assets/images/2.png'),
              title: 'priya321',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardDescription(
              content:
                  'My husband has his 3 days transplant assessment in Newcastle next month, strange mix of emotions. For those that have been through this how long did it take following assessment was it until you were..\nSee More ',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardLocation(),
            Divider(color: AppTheme.appBorderColor),
            CustomCardComments(
              comments: '24 members have this question',
            ),
            Divider(color: AppTheme.appBorderColor),
            CustomFbLikeButton(),
            CustomCardFotter()
          ],
        ),
      ),
    );
  }
}
