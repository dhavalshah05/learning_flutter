import 'package:flutter/material.dart';

class PortfolioProject extends StatelessWidget {

  const PortfolioProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;

    double imageWidth = isDesktop ? 250 : 188;
    double imageHeight = isDesktop ? 400 : 300;
    double titleSize = isDesktop ? 35 : 26;
    double descSize = isDesktop ? 16 : 14;

    Text getTitle() {
      return Text(
        "KidCare",
        style: TextStyle(
            fontSize: titleSize,
            fontFamily: "mallory",
            fontWeight: FontWeight.w500
        ),
      );
    }

    Text getDescription() {
      return Text(
        "It helps parents to find care givers for their children. It shows people based on reviews and location of the parent.",
        style: TextStyle(
            fontSize: descSize,
            fontFamily: "mallory",
            fontWeight: FontWeight.w300
        ),
      );
    }

    OutlinedButton getButton() {
      return OutlinedButton(
        onPressed: (){},
        child: Text("Open in play store"),
      );
    }

    Container getProductImage() {
      return Container(
        width: imageWidth,
        height: imageHeight,
        color: Colors.red,
      );
    }

    if (isDesktop) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getProductImage(),
            SizedBox(width: 80,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTitle(),
                  SizedBox(height: 10,),
                  getDescription(),
                  SizedBox(height: 30,),
                  getButton(),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getProductImage(),
            SizedBox(height: 20),
            getTitle(),
            SizedBox(height: 10,),
            getDescription(),
            SizedBox(height: 30,),
            getButton(),
          ],
        ),
      );
    }
  }

}