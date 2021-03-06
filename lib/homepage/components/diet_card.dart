import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_comments.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_description.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_footer.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_location.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_title.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_title_heading.dart';
import 'package:crowd_fund_newsfeed/homepage/components/components/post_card_title_userInfo.dart';

import 'package:flutter/material.dart';

class DietCard extends StatelessWidget {
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
              image: AssetImage('assets/images/user1.png'),
              title: 'rohit.shetty12 asked a question',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardTitle(
              description: 'What are the signs and symptoms of skin cancer?',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardDescription(
              content:
                  'I’ve been facing a few possibble symptoms of skin cancer. I’ve googled the possibilities but i thought i’d ask the community inste..\nSee More',
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
            CustomCardFotter()
          ],
        ),
      ),
    );
  }
}
