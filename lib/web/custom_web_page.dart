
import 'package:flutter/material.dart';
import 'package:learning_flutter/web/experience_section.dart';
import 'package:learning_flutter/web/portfolio_project.dart';

class SectionContainer extends StatelessWidget {

  final Widget child;

  const SectionContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          child: child,
          constraints: const BoxConstraints(
              maxWidth: 1100
          ),
        ),
      ),
    );
  }

}

class Section extends StatelessWidget {

  final Widget child;
  final Color color;
  final String? title;
  final double paddingHorizontal;
  final double paddingVertical;

  const Section({
    Key? key,
    required this.child,
    required this.color,
    this.title,
    this.paddingHorizontal = 80,
    this.paddingVertical = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget getChildWithTitle() {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title!.toUpperCase(),
            style: TextStyle(
              fontSize: 30,
              fontFamily: "mallory",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 3,
            width: 50,
            color: Colors.red,
          ),
          SizedBox(height: 80),
          child
        ],
      );
    }

    return Container(
      padding: EdgeInsets.only(left: paddingHorizontal, right: paddingHorizontal, top: paddingVertical, bottom: paddingVertical),
      width: double.infinity,
      color: color,
      child: title == null ? child : getChildWithTitle(),
    );

  }

}

class CustomWebPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderSection(),
              SectionContainer(
                child: Section(
                  title: "Experience",
                  color: Colors.black12.withAlpha(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ExperienceCard(companyName: "Fynd", year: "2022 - Counting...",),
                      ExperienceCard(companyName: "Hyperlink Infosystem", year: "2018 - 2022",),
                      ExperienceCard(companyName: "ITGo Software Solutions", year: "2016 - 2018",),
                      ExperienceCard(companyName: "Samcom Technologies", year: "2016 - 2016", removeBottomMargin: true,),
                    ],
                  ),
                ),
              ),
              FeaturesSection(),
              SectionContainer(
                child: Section(
                  title: "Projects",
                  color: Colors.black12.withAlpha(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      PortfolioProject(),
                      PortfolioProject(),
                    ],
                  ),
                ),
              ),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }

}

class FooterSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Section(
        color: Colors.black12.withAlpha(10),
        title: "Contact Me",
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(100),
                color: Colors.black,
              ),
              height: 80,
              width: 80,
            ),
            SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(100),
                color: Colors.black,
              ),
              height: 80,
              width: 80,
            ),
            SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(100),
                color: Colors.black,
              ),
              height: 80,
              width: 80,
            ),
          ],
        ),
      ),
    );
  }

}

class FeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;
    return SectionContainer(
      child: Section(
        color: Colors.black12,
        title: "Features",
        child: getFeatureSections(isDesktop),
      ),
    );
  }

  getFeatureSections(bool isDesktop) {
    if (isDesktop) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: FeatureSection(),),
          SizedBox(width: 20),
          Expanded(child: FeatureSection(),),
          SizedBox(width: 20),
          Expanded(child: FeatureSection(),),
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FeatureSection(),
          SizedBox(height: 30),
          FeatureSection(),
          SizedBox(height: 30),
          FeatureSection(),
        ],
      );
    }
  }
  
}

class FeatureSection extends StatelessWidget {
  const FeatureSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.black12.withAlpha(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            color: Colors.red,
          ),
          SizedBox(height: 15,),
          Text(
            "Feature Title".toUpperCase(),
            style: TextStyle(
              fontFamily: "mallory",
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2,),
          Text(
            "Feature description will go here!\nAll Needed entries will be included here!",
            style: TextStyle(
              fontFamily: "mallory",
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isDesktop = width > 850;

    return SectionContainer(
      child: Section(
        color: Colors.black12.withAlpha(10),
        child: Row(
          children: [
            LeftHeaderSection(isDesktop: isDesktop,),
            RightHeaderSection(isDesktop: isDesktop,),
          ]
        ),
      ),
    );
  }

}

class LeftHeaderSection extends StatelessWidget {
  final bool isDesktop;

  const LeftHeaderSection({Key? key, required this.isDesktop}) : super(key: key);

  Widget getAvatarImage() {
    if (isDesktop) {
      return const SizedBox.shrink();
    } else {
      return CircleAvatar(
        radius: 60,
        child: ClipOval(
          child: Image.asset(
            "assets/my.jpeg",
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          getAvatarImage(),
          Name(fontFamily: "mallory", fontBold: FontWeight.w900),
          SubText(fontFamily: "mallory", fontRegular: FontWeight.w500),
          SizedBox(height: 20,),
          OutlinedButton(
            child: Text("Download CV"),
            onPressed: (){},
          )
        ],
      ),
    );
  }

}

class RightHeaderSection extends StatelessWidget {

  final bool isDesktop;

  const RightHeaderSection({Key? key, required this.isDesktop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isDesktop) {
      return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/my.jpeg",
              height: 300,
              width: 300,
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }

}

class SubText extends StatelessWidget {
  const SubText({
    Key? key,
    required this.fontFamily,
    required this.fontRegular,
  }) : super(key: key);

  final String fontFamily;
  final FontWeight fontRegular;

  @override
  Widget build(BuildContext context) {
    return Text(
      "I build Android applications.",
      style: TextStyle(
        fontSize: 14,
        fontFamily: fontFamily,
        fontWeight: fontRegular,
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    Key? key,
    required this.fontFamily,
    required this.fontBold,
  }) : super(key: key);

  final String fontFamily;
  final FontWeight fontBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      "I'm Dhaval Shah",
      style: TextStyle(
        fontSize: 40,
        fontFamily: fontFamily,
        fontWeight: fontBold,
      ),
      textAlign: TextAlign.center,
    );
  }
}