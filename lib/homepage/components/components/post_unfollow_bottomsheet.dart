import 'package:flutter/material.dart';

class CustomUnfollowBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          ListTile(
            leading: Image.asset('assets/images/eye-slash.png'),
            title: Text('Hide <Post type>'),
            subtitle: Text('See fewer posts like this'),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            leading: Image.asset('assets/images/user-times.png'),
            title: Text('Unfollow <username>'),
            subtitle: Text('See fewer posts like this'),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            leading: Image.asset('assets/images/exclamation-circle.png'),
            title: Text('Report<Post type>'),
            subtitle: Text('See fewer posts like this'),
          ),
          Divider(
            color: Colors.black26,
          ),
          ListTile(
            leading: Image.asset('assets/images/link.png'),
            title: Text('Copy<Post type> link'),
            subtitle: Text('See fewer posts like this'),
          ),
        ],
      ),
    );
  }
}
