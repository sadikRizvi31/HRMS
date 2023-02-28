import 'package:flutter/material.dart';
import 'package:hrms/Pages/LoginScreen/components/LoginContainer.dart';

import '../../../Utils/Hexagon.dart';
import '../../../Utils/constants.dart';
import 'MaskedBgImg.dart';

class RootUI extends StatelessWidget {
  const RootUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        //Image.asset("assets/images/MaskImage.png"),
        const MaskedBgImg(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Hexagon(text: "HRMS", size: 120, color: COLOR_WHITE),
            ),
            ListTile(
              title: Text("Welcome to the HRMS",style: textBold(COLOR_WHITE,25),),
              subtitle: Text("Discover Simply Amazing Admin Dashboard\nWith the Stunning design System",style: textLight(COLOR_WHITE,15),),
            ),
            SizedBox(height: height * 0.02,),
            LoginContainer(),
          ],
        )
      ],
    );
  }
}
