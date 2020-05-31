import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:flutter/material.dart';

class CustomFloationgButtonBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          ListTile(
            leading: Image.asset('assets/images/Icons.png'),
            title: Text(
              'Create a post ',
              style: TextStyle(
                color: AppTheme.appLeadingColor,
              ),
            ),
            subtitle: Text('Share your thoughts with the community'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            leading: Image.asset('assets/images/Iconsinfo.png'),
            title: Text(
              'Ask a Question',
              style: TextStyle(
                color: AppTheme.appLeadingColor,
              ),
            ),
            subtitle: Text('Any doubts? As the community'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            leading: Image.asset('assets/images/Iconsfeed.png'),
            title: Text(
              'Start a Poll',
              style: TextStyle(
                color: AppTheme.appLeadingColor,
              ),
            ),
            subtitle: Text('Need the opinion of the many?'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            leading: Image.asset('assets/images/calenderIcons.png'),
            title: Text(
              'Organize an Event',
              style: TextStyle(
                color: AppTheme.appLeadingColor,
              ),
            ),
            subtitle: Text('Start a meet with people to share your joys '),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
