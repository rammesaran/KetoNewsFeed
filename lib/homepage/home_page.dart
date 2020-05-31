import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:crowd_fund_newsfeed/homepage/components/categories.dart';
import 'package:crowd_fund_newsfeed/homepage/components/diet_card.dart';
import 'package:crowd_fund_newsfeed/homepage/components/diet_card_two.dart';
import 'package:crowd_fund_newsfeed/shared/components/fab_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Text(
              "COMMUNITY",
              style: TextStyle(
                fontSize: AppTheme.appMediumFontSize,
                color: AppTheme.appTitleColor,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              "All Communites",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppTheme.appLeadingColor,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/IMG.png',
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    bottom: 5,
                    left: 15,
                  ),
                  height: 40,
                  child: TextField(
                    autofocus: false,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: " Search posts and members",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: AppTheme.appTitleColor),
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              Image.asset('assets/images/bell.png')
            ],
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Categories(),
            DietCard(),
            DietCardTwo(),
          ],
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        items: [
          FABBottomAppBarItem(
              image: AssetImage('assets/images/Group.png'), text: 'Feed'),
          FABBottomAppBarItem(
              image: AssetImage('assets/images/Library.png'), text: 'Library'),
          FABBottomAppBarItem(
              image: AssetImage('assets/images/Messages.png'),
              text: 'Messages'),
          FABBottomAppBarItem(
              image: AssetImage('assets/images/Services.png'),
              text: 'Services'),
        ],
      ),
    );
  }
}
