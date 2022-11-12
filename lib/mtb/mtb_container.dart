import 'package:flutter/material.dart';

class MTBContainer extends StatelessWidget {
  final Widget child;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double radius;
  final Color backgroundColor;

  MTBContainer({
    required this.child,
    this.paddingTop = 20,
    this.paddingBottom = 20,
    this.paddingLeft = 20,
    this.paddingRight = 20,
    this.radius = 15,
    this.backgroundColor = const Color(0xFF3E4857),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: paddingLeft,
        right: paddingRight,
        bottom: paddingBottom,
        top: paddingTop,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
