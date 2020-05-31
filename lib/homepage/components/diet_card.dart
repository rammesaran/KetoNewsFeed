import 'package:crowd_fund_newsfeed/app_theme.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'DIET',
                  style: TextStyle(
                    color: AppTheme.appCardTitleColor,
                    fontSize: AppTheme.appMediumFontSize,
                  ),
                ),
                Text(
                  '1min',
                  style: TextStyle(
                    color: AppTheme.appTimeColor,
                    fontSize: AppTheme.appMediumFontSize,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user1.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'rohit.shetty12 asked a question',
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
                  onPressed: (){
                  },
                 
                  ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text(
                  'What are the signs and symptoms of skin cancer?',
                  style: TextStyle(
                    color: AppTheme.appTimeColor,
                    fontSize: AppTheme.appMediumFontSize,
                    fontWeight: AppTheme.appBoldFontWeight,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'I’ve been facing a few possibble symptoms of skin cancer. I’ve googled the possibilities but i thought i’d ask the community inste..',
                    style: TextStyle(
                      color: AppTheme.appTimeColor,
                      fontWeight: AppTheme.appRegularFontWeight,
                      fontStyle: AppTheme.appFontStyle,
                      fontSize: AppTheme.appMediumFontSize,
                    ),
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: AppTheme.appRegularFontWeight,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
            ),
            Divider(color: AppTheme.appBorderColor),
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Positioned(
                        
                        child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image2.png')),
                    ),
                  ],
                ),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/Anoymous.png')),
                CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image4.png')),
                SizedBox(
                  width: 10,
                ),
                // Icon(Icons.location_city),
                Text('24 members have this question'),
              ],
            ),
            Divider(color: AppTheme.appBorderColor),
            Padding(
                padding: EdgeInsets.all(7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){

                      },
                                          child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Row(
                            children: <Widget>[
                              Image.asset('assets/images/empty_question.png'),
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
                      onPressed: (){
                          showModalBottomSheet<void>(
                             shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(10.0),
                             ),
                               backgroundColor: Colors.white,
                            context: context, builder: (BuildContext context) {
        return Container(
           
          child: Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.all(18.0),
                  child: Text(
          "Share Post",
          style: TextStyle(
            color:  AppTheme.appTimeColor,
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
      });
                      },
                        child: Padding(
                        padding: EdgeInsets.all(7.0),
                        child: Image.asset('assets/images/share-alt.png'),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
