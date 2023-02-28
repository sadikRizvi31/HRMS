import 'package:flutter/material.dart';
import 'package:hrms/Widgets/PopupMenu.dart';

import '../Utils/constants.dart';

class appBar extends StatelessWidget with PreferredSizeWidget {

  final String title;

  appBar({required this.title});

  @override
  Widget build(BuildContext context) {

    ThemeData themeData = Theme.of(context);
    return AppBar(
      backgroundColor: COLOR_WHITE,
      title: Center(child: Text("Dashboard",style: themeData.textTheme.headline3)),
      leading: IconButton(
        color: Color_BLACK,
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          color: Color_BLACK,
          onPressed: (){},
          icon: Icon(Icons.notifications_active_rounded),
        ),
        PopupMenu(),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
