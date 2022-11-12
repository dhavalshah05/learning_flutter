import 'package:flutter/material.dart';
import 'package:learning_flutter/web/custom_web_page.dart';

class ContributionSection extends StatelessWidget {

  const ContributionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Section(
        color: Colors.black54.withAlpha(30),
        title: "Contributions",
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            ContributionCard(
              index: 1,
              title: "SuperAdapter",
              description: "Provides base classes for RecyclerView adapter and scroll listeners.",
            ),
            SizedBox(height: 20,),
            ContributionCard(
              index: 2,
              title: "SuperDateTime",
              description: "Provides helper methods to convert string to DateTime. It helps when displaying dates from server.",
            )
          ],
        ),
      ),
    );
  }

}

class ContributionCard extends StatelessWidget {

  final int index;
  final String title;
  final String description;

  const ContributionCard({
    Key? key,
    required this.index,
    required this.title,
    required this.description,
  }) : super(key: key);

  Widget getIndex() {
    return Text(
      "#$index",
      style: const TextStyle(
        fontSize: 24,
        fontFamily: "mallory",
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget getTitle() {
    return Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontFamily: "mallory",
          fontWeight: FontWeight.w500,
        )
    );
  }

  Widget getDescription() {
    return Text(
        description,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: "mallory",
          fontWeight: FontWeight.w300,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(20),
        borderRadius: BorderRadiusDirectional.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getIndex(),
          const SizedBox(width: 16,),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getTitle(),
                const SizedBox(height: 8),
                getDescription()
              ],
            ),
          )
        ],
      ),
    );
  }

}