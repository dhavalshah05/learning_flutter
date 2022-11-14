import 'package:flutter/material.dart';
import 'package:learning_flutter/web/customheader/header_link.dart';

class WebHeader extends StatelessWidget {

  const WebHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blueGrey.withAlpha(50),
      padding: const EdgeInsets.all(8),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderLink(title: "Home"),
            SizedBox(width: 8,),
            HeaderLink(title: "Projects"),
            SizedBox(width: 8,),
            HeaderLink(title: "Contact")
          ],
        ),
      ),
    );
  }

}