import 'package:flutter/material.dart';
import 'package:learning_flutter/web/customheader/header_link.dart';

class MobileHeader extends StatefulWidget {

  var isHeaderVisible = false;

  MobileHeader({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MobileHeaderState();
  }

}

class _MobileHeaderState extends State<MobileHeader> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blueGrey.withAlpha(50),
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          !widget.isHeaderVisible
              ? SizedBox.shrink()
              : Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      HeaderLink(title: "Home"),
                      SizedBox(
                        height: 8,
                      ),
                      HeaderLink(title: "Projects"),
                      SizedBox(
                        height: 8,
                      ),
                      HeaderLink(title: "Contact")
                    ],
                  ),
                ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.isHeaderVisible = !widget.isHeaderVisible;
              });
            },
            icon: Icon(widget.isHeaderVisible ? Icons.cancel : Icons.menu),
          )
        ],
      ),
    );
  }

}