import 'package:crowd_fund_newsfeed/app_theme.dart';
import 'package:crowd_fund_newsfeed/homepage/home_page.dart';
import 'package:crowd_fund_newsfeed/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.green,
        fontFamily: AppTheme.appFont,
  
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: LoginPage(),
      home: HomePage(),

    );
  }
}

