import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
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
            title: "Home",
            svgScr: "assets/icons/home.svg", 
          ),
          BottomNavItem(
            title: "chat",
            svgScr: "assets/icons/search.svg",
            isActive: true,
          ),
           BottomNavItem(
            title: "Quiz",
            svgScr: "assets/icons/Quizicon.svg",
            isActive: true,
          ),
           BottomNavItem(
            title: "profile",
            svgScr: "assets/icons/profil.svg",
            isActive: true,
          ),

          
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String? svgScr;
  final String? title;
  final Function? press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){press;},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kBlueLightColor : kTextColor,
          ),
          Text(
            title!,
            style: TextStyle(color: isActive ? kBlueLightColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
