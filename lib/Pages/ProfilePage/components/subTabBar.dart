import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/singleSubTabView.dart';
import 'package:hrms/Pages/ProfilePage/components/singleTabBar.dart';

import '../../../Utils/constants.dart';

class subTabBar extends StatefulWidget {

  final List<String> tabMenu;
  final int rootMenuIndex;

  subTabBar({required this.tabMenu,required this.rootMenuIndex});

  @override
  State<subTabBar> createState() => _subTabBarState();
}

class _subTabBarState extends State<subTabBar> with SingleTickerProviderStateMixin {

  late TabController _controller;
  int _currentIndex = 0;

  void initState() {
    super.initState();
    _controller = TabController(length: widget.tabMenu.length, vsync: this);
    _controller.addListener(_handleTabChange);
  }

  _handleTabChange() {
    setState(() {
      _currentIndex = _controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {

    ThemeData themeData = Theme.of(context);

    return DefaultTabController(
      length: widget.tabMenu.length,
      child: Padding(
        padding: EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0),
        child: Column(
          children: [
            TabBar(
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              indicator: BoxDecoration(
                color: COLOR_BLUEMASK, borderRadius: BorderRadius.circular(8),
              ),
              controller: _controller,
              unselectedLabelColor: Color_BLACK,
              labelColor: COLOR_WHITE,
              onTap: (index) {},
              tabs: [
                singleTabBar(menuName: widget.tabMenu[0]),
                singleTabBar(menuName: widget.tabMenu[1]),
                singleTabBar(menuName: widget.tabMenu[2]),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  singleSubTabView(menuIndex: _controller.index,rootMenuIndex: widget.rootMenuIndex),
                  singleSubTabView(menuIndex: _controller.index,rootMenuIndex: widget.rootMenuIndex),
                  singleSubTabView(menuIndex: _controller.index,rootMenuIndex: widget.rootMenuIndex),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
