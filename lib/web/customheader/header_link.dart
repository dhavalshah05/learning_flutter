import 'package:flutter/material.dart';

class HeaderLink extends StatelessWidget {
  final String title;

  const HeaderLink({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 150),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.withAlpha(80),
          borderRadius: BorderRadiusDirectional.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "mallory",
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
