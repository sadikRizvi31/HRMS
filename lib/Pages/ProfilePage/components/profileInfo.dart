import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/ProfileImage.dart';
import 'package:hrms/Utils/constants.dart';
import 'package:hrms/Widgets/customWidgets.dart';

class profileInfo extends StatelessWidget {
  const profileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProfileImage(),
        SizedBox(width: 10.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            nameAdminTag(),
            textSpan(iconData: Icons.person, text: "CEO"),
            textSpan(iconData: Icons.mail, text: "parag.redjinni@gmail.com"),
          ],
        )
      ],
    );
  }
}
