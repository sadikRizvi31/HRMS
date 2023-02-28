import 'package:flutter/material.dart';

class singleTabBar extends StatelessWidget {

  final String menuName;

  singleTabBar({required this.menuName});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Tab(
      child: Container(
        height: 40,
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(menuName,textAlign: TextAlign.center,)),
      ),
    );
  }
}
