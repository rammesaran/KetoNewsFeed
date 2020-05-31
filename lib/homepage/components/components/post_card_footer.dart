import 'package:crowd_fund_newsfeed/homepage/components/components/post_bottomsheet.dart';
import 'package:flutter/material.dart';

class CustomCardFotter extends StatelessWidget {
  const CustomCardFotter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/images/empty_like.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('24')
                    ],
                  )),
            ),
            Padding(
                padding: EdgeInsets.all(7.0),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/comment-lines.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('24')
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(7.0),
              child: Image.asset('assets/images/bookmark-full.png'),
            ),
            FlatButton(
              onPressed: () {
                showModalBottomSheet<void>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (BuildContext context) {
                      return ShareCustomBottomSheet();
                    });
              },
              child: Padding(
                padding: EdgeInsets.all(7.0),
                child: Image.asset('assets/images/share-alt.png'),
              ),
            ),
          ],
        ));
  }
}
