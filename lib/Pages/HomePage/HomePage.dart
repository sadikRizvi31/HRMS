import 'package:flutter/material.dart';
import 'package:hrms/Utils/constants.dart';
import 'package:hrms/Widgets/appBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(title: "dashboard"),
      body: Container(
        width: double.infinity,
        color: COLOR_WHITE,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/infinityBrainsLogog.png",width: 120,height: 120,),
            Text("Welcome to\nInfinitybrains",style: textBold(Color_BLACK, 40)),
          ],
        ),
      ),
    );
  }
}
