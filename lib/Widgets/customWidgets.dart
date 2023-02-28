import 'package:flutter/material.dart';

import '../Pages/ProfilePage/components/dottedBorder.dart';
import '../Utils/constants.dart';

Widget textSpan({required IconData iconData,required String text}){
  return RichText(
    text: TextSpan(
      children: [
        WidgetSpan(
          child: Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: COLOR_GREY.withOpacity(0.2),
              ),
              child: Icon(iconData,color: COLOR_GREY,size: 17,)
          ),
        ),
        TextSpan(
          text: "  "+text,style: textLight(COLOR_GREY, 15),
        ),
      ],
    ),
  );
}

Widget nameAdminTag(){
  return Row(
    children: [
      Text("Parag Shah",style: textBold(Color_BLACK, 18),),
      SizedBox(width: 5,),
      Container(
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.green.shade50,
        ),
        child: Text("Admin",style: textLight(Colors.lightGreen, 12),),
      )
    ],
  );
}

Widget leaves(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        dottedBorder(color: Colors.red,title: "12.00",subtitle: "Taken Leaves",),
        SizedBox(width: 10.0,),
        dottedBorder(color: Colors.green,title: "02.00",subtitle: "Remain Leaves",),
        SizedBox(width: 10.0,),
        dottedBorder(color: Colors.green,title: "12.00",subtitle: "Total Leaves",),
        SizedBox(width: 10.0,),
        dottedBorder(color: Colors.red,title: "00.00",subtitle: "Accured Leaves",),
        SizedBox(width: 10.0,),
        dottedBorder(color: Colors.green,title: "00.00",subtitle: "C.Fwd Leaves",),
      ],
    ),
  );
}