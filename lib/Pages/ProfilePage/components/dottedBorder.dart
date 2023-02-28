import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class dottedBorder extends StatelessWidget {

  final Color color;
  final String title;
  final String subtitle;

  dottedBorder({required this.color, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return DottedBorder(
      padding: EdgeInsets.all(8.0),
      color: color,
      strokeWidth: 2,
      radius: Radius.circular(10.0),
      child: Column(
        children: [
          Text(title,style: themeData.textTheme.headline2,),
          Text(subtitle,style: textLight(COLOR_GREY, 12),),
        ],
      ),
    );
  }
}
