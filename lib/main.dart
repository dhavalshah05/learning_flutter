// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_flutter/expense_manager/expense_manager.dart';
import 'package:learning_flutter/sugarfree/sugarfree_app.dart';
import 'package:learning_flutter/task/task_items.dart';
import 'package:learning_flutter/web/custom_web_page.dart';
import 'package:learning_flutter/web/portfolio_project.dart';
import 'package:learning_flutter/web/web_header_item.dart';
import 'package:learning_flutter/web_full_pages/full_portfolio_app.dart';

import 'game/question_game.dart';
import 'mtb/profile_screen.dart';

void main() {
  runApp(CustomWebPage());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  final backgroundColor = const Color(0xffF0F3FD);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: getNavexCard(),
        ),
      ),
    );
  }

  Widget getHeader() {
    return Container(
      color: Colors.grey.withAlpha(30),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WebHeaderItem(text: "Home"),
          SizedBox(width: 20,),
          WebHeaderItem(text: "Projects"),
          SizedBox(width: 20,),
          WebHeaderItem(text: "Contact"),
        ]
      )
    );
  }

  Widget getNavexCard() {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 500),
        child: Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(blurRadius: 10, color: Colors.grey)
              ]
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: null,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20), topEnd: Radius.circular(20))
                    ),
                  ),
                  Container(
                      child: Text("LIVE".toUpperCase(), style: TextStyle(color: Colors.white, fontFamily: "mallory", fontWeight: FontWeight.w500, fontSize: 12),),
                      padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),)
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Navex Job Fair 2022", style: TextStyle(fontSize: 22, fontFamily: "mallory", fontWeight: FontWeight.w500)),
                    SizedBox(height: 8,),
                    Text(
                      "Some description regarding navex job fair. It contains how you can learn about navex and its products.",
                      style: TextStyle(fontSize: 13, fontFamily: "mallory", fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: const [
                        Expanded(child: Text("Location Info", style: TextStyle(fontFamily: "mallory", fontWeight: FontWeight.w300)),),
                        Text("01 Apr - 01 May", style: TextStyle(fontFamily: "mallory", fontWeight: FontWeight.w300, color: Colors.black))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getInterviewCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: backgroundColor,),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("#1"),
                Text("John Doe"),
                Text("03 Nov, 2022"),
                Text("Interviewer 1"),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("1"),
              Text("Years"),
              Text("SELECTED"),
            ],
          )
        ],
      ),
    );
  }
}

