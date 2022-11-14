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
    var item = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
    );

    return Container(
      width: double.infinity,
      color: Colors.blueGrey.withAlpha(50),
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstChild: item,
            secondChild: const SizedBox.shrink(),
            crossFadeState: widget.isHeaderVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
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