import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            press: (){},
            key: Key('hi'),
            title: "Today",
            svgScr: "assets/icons/calendar.svg",
          ),
          BottomNavItem(
            press: (){},
            key: Key('hi'),
            title: "All Exercises",
            svgScr: "assets/icons/gym.svg",
            isActive: true,
          ),
          BottomNavItem(
            press: (){},
            key: Key('hi'),
            title: "Settings",
            svgScr: "assets/icons/Settings.svg",
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    required Key key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}