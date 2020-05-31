import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:flutter/material.dart';

class ShareCustomBottomSheet extends StatelessWidget {
  const ShareCustomBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Share Post",
              style: TextStyle(
                color: AppTheme.appTimeColor,
                fontWeight: AppTheme.appBoldFontWeight,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset('assets/images/sendIcons.png'),
            title: Text('Send Private message'),
          ),
          ListTile(
            leading: Image.asset('assets/images/FeedsIcons.png'),
            title: Text('Share as post'),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            leading: Image.asset('assets/images/FbIcons.png'),
            title: Text('Share On FaceBook'),
          ),
          ListTile(
            leading: Image.asset('assets/images/whatsppIcons.png'),
            title: Text('Send via WhatsApp'),
          ),
        ],
      ),
    );
  }
}
