import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/web_full_pages/first_page.dart';
import 'package:learning_flutter/web_full_pages/second_page.dart';
import 'package:learning_flutter/web_full_pages/third_page.dart';

class FullPortfolioApp extends StatelessWidget {
  const FullPortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageView(
        scrollDirection: Axis.vertical,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
    );
  }

}