import 'dart:developer';

import 'package:flutter/material.dart';

class HeaderLink extends StatefulWidget {

  final String title;
  bool isHover = false;

  HeaderLink({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HeaderLinkState();
  }
}

class _HeaderLinkState extends State<HeaderLink> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (type) {
        setState(() {
          widget.isHover = type;
        });
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 150),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey.withAlpha(widget.isHover ? 80 : 60),
            borderRadius: BorderRadiusDirectional.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: "mallory",
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
