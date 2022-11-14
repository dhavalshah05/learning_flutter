import 'package:flutter/material.dart';
import 'package:learning_flutter/web/custom_web_page.dart';
import 'package:learning_flutter/web/customheader/mobile_header.dart';
import 'package:learning_flutter/web/customheader/web_header.dart';

class CustomHeader extends StatelessWidget {

  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return ;
    return SectionContainer(
      child: MediaQuery.of(context).size.width > 700 ? WebHeader() : MobileHeader(),
    );
  }

}