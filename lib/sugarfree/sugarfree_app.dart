// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SugarFreeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(color: Colors.blueAccent, boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(10, 10),
                          blurStyle: BlurStyle.normal,
                          blurRadius: 10),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Some long recipe name to test the multiple line feature. It is said that it could work without modifying anything.",
                    style: TextStyle(
                      fontFamily: "mallory",
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "12 ingredients - 4 Min",
                    style: TextStyle(
                      fontFamily: 'mallory',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
