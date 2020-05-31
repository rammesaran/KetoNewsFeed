import 'package:flutter/material.dart';

class CustomCardComments extends StatelessWidget {
  final String comments;
  CustomCardComments({@required this.comments});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/image2.png'),
            ),
          ],
        ),

        CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/Anoymous.png')),
        CircleAvatar(backgroundImage: AssetImage('assets/images/image4.png')),

        SizedBox(
          width: 10,
        ),
        // Icon(Icons.location_city),
        Text(comments),
      ],
    );
  }
}
