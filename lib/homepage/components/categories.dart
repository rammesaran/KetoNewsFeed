import 'package:flutter/material.dart';

import 'components/category_chip.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Wrap(spacing: 10.0, children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              CategoryChip(
                inputText: "All Posts",
              ),
              CategoryChip(
                inputText: "News",
              ),
              CategoryChip(
                inputText: "Diet",
              ),
              CategoryChip(
                inputText: "Lifestyle",
              ),
              CategoryChip(
                inputText: "Symptoms",
              ),
              CategoryChip(
                inputText: "Fasion",
              ),
              CategoryChip(
                inputText: "Techonology",
              ),
              CategoryChip(
                inputText: "Arts",
              ),
            ],
          ),
        )
      ]),
    );
  }
}
