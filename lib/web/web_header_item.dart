import 'package:flutter/material.dart';

class WebHeaderItem extends StatelessWidget {

  final TextStyle textStyle = const TextStyle(color: Colors.white, fontSize: 20);
  final String text;

  const WebHeaderItem({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Text(
          text,
          style: textStyle,
        ),
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadiusDirectional.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.all(10),
      ),
      mouseCursor: MaterialStateMouseCursor.clickable,
      onDoubleTap: (){},
    );
  }

}