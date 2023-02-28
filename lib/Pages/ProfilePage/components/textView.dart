import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class textView extends StatelessWidget {

  final String title;
  IconData? iconData;
  final String text;
  IconData? iconTrailing;


  textView({required this.title, this.iconData, required this.text,this.iconTrailing});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            width: size.width * 0.42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: textLight(COLOR_GREY, 14),),
                Text(":",style: textLight(Color_BLACK, 14),),
              ],
            ),
          ),
          iconData != null ? RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "  "),
                WidgetSpan(child: Icon(iconData,color: Colors.red,size: 16,)),
                TextSpan(text: "  "+text,style: textLight(Color_BLACK, 14)),
              ]
            ),
          ) :
          Text("  "+text,style: textLight(Color_BLACK, 14),),
          Icon(iconTrailing != null ? iconTrailing : null,color: COLOR_BLUEMASK,size: 14,),
        ],
      ),
    );
  }
}
