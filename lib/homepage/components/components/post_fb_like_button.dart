import 'package:flutter/material.dart';

class CustomFbLikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 200.0,
      height: 40.0,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 5.0,
            spreadRadius: 5.0,
            offset: Offset(
              1.0,
              1.0,
            ),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Image(
                      image: AssetImage('assets/images/375-thumbs-up-1.png'))),
              Expanded(child: Text("Like")),
              Expanded(
                  child: Image(image: AssetImage('assets/images/_Group_.png'))),
              Expanded(child: Text("Haha")),
              Expanded(
                  child:
                      Image(image: AssetImage('assets/images/_Group_sad.png'))),
              Expanded(child: Text("Sad")),
            ],
          ),
        ],
      ),
    );
  }
}
