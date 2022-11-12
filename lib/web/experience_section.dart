import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {

  final String companyName;
  final String year;
  final bool removeBottomMargin;

  const ExperienceCard({
    Key? key,
    required this.companyName,
    required this.year,
    this.removeBottomMargin = false
  }) : super(key: key);


  Widget getSideRail() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          color: Colors.black,
          width: 3,
          margin: EdgeInsets.only(top: 25),
        ),
        Container(
          height: 20,
          width: 20,
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadiusDirectional.circular(50),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSideRail(),
          SizedBox(width: 10,),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyName,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "mallory",
                    fontWeight: FontWeight.w500
                ),
              ),
              Text(
                year,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "mallory",
                    fontWeight: FontWeight.w300
                ),
              ),
              removeBottomMargin ? SizedBox.shrink() : SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }

}