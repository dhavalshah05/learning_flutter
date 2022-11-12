// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learning_flutter/mtb/mtb_container.dart';

const Color textWhiteColor = Color(0xB3FFFFFF);
const String userName = "Mark Twain";

class ProfileScreen extends StatelessWidget {
  final double outerPadding = 10.0;
  final double innerPadding = 20.0;
  final double avatarSize = 80;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF212D3E),
        padding: EdgeInsets.only(
            left: outerPadding,
            right: outerPadding,
            bottom: outerPadding,
            top: (avatarSize / 2) + 20),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                MTBContainer(
                  paddingTop: (avatarSize / 2) + 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ProfileFollowCount(
                              count: "255",
                              text: "Followers",
                              tintColor: Colors.lightBlueAccent,
                            ),
                          ),
                          SizedBox(width: innerPadding),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  userName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Total KM: 5000",
                                  style: TextStyle(
                                    color: textWhiteColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                          SizedBox(width: innerPadding),
                          Expanded(
                            child: ProfileFollowCount(
                              count: "10",
                              text: "Followers",
                              tintColor: Colors.yellow,
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                      SizedBox(height: innerPadding),
                      Row(
                        children: [
                          _ProfileStatCard(
                            count: "0",
                            text: "Place",
                            subText: "Visited",
                            tintColor: Colors.lightBlueAccent,
                          ),
                          SizedBox(width: innerPadding),
                          _ProfileStatCard(
                            count: "0",
                            text: "Cities",
                            subText: "Visited",
                            tintColor: Colors.orange,
                          ),
                          SizedBox(width: innerPadding),
                          _ProfileStatCard(
                            count: "0",
                            text: "Trip",
                            subText: "Total",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -(avatarSize / 2),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: avatarSize,
                        height: avatarSize,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.edit, size: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            MTBContainer(
              paddingTop: 5,
              paddingBottom: 5,
              paddingLeft: 5,
              paddingRight: 5,
              child: Column(
                children: [
                  ProfileSettingItem(
                    text: "Notification",
                    icon: null,
                  ),
                  ProfileSettingItem(text: "My Bookings"),
                  ProfileSettingItem(text: "Blocked Users"),
                  ProfileSettingItem(text: "Change Password"),
                  ProfileSettingItem(text: "Search User"),
                  ProfileSettingItem(text: "Rate The App"),
                  ProfileSettingItem(text: "Share App"),
                  ProfileSettingItem(text: "Help & FAQ"),
                  ProfileSettingItem(text: "Terms & Privacy Policy"),
                  ProfileSettingItem(text: "About Us"),
                  ProfileSettingItem(text: "Contact Us"),
                  ProfileSettingItem(
                    text: "Logout",
                    icon: null,
                    textColor: Colors.lightBlueAccent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileSettingItem extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color textColor;

  const ProfileSettingItem({
    Key? key,
    required this.text,
    this.icon = Icons.keyboard_arrow_right,
    this.textColor = textWhiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
              ),
            ),
          ),
          icon != null
              ? Icon(
                  icon,
                  size: 18,
                  color: textWhiteColor,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}

class ProfileFollowCount extends StatelessWidget {
  final String count;
  final String text;
  final Color tintColor;

  ProfileFollowCount(
      {required this.count, required this.text, required this.tintColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            color: tintColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(
            color: textWhiteColor,
            fontSize: 12,
          ),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}

class _ProfileStatCard extends StatelessWidget {
  final String count;
  final String text;
  final String subText;
  final Color tintColor;

  _ProfileStatCard(
      {required this.count,
      required this.text,
      required this.subText,
      this.tintColor = Colors.yellow});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF212D3E),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              count,
              style: const TextStyle(
                color: textWhiteColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              text.toUpperCase(),
              style: TextStyle(
                color: tintColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subText,
              style: const TextStyle(
                color: textWhiteColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
