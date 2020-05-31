import 'package:flutter/material.dart';

class ContainerFluid extends StatelessWidget {
  final Widget child;
  ContainerFluid({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 20,
        bottom: 20,
      ),
      child: child,
    );
  }
}
