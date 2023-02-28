import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class rootTabBar extends StatelessWidget {

  var controller;

  rootTabBar({this.controller});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return TabBar(
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      labelStyle: themeData.textTheme.headline4,
      unselectedLabelStyle: themeData.textTheme.headline4,
      indicatorColor: COLOR_BLUEMASK,
      indicatorWeight: 2.0,
      controller: controller,
      unselectedLabelColor: COLOR_GREY,
      labelColor: COLOR_BLUEMASK,
      onTap: (index) {},
      tabs: const [
        Tab(text: "Overview",),
        Tab(text: "Settings"),
      ],
    );
  }
}
