import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class MaskedBgImg extends StatelessWidget {
  const MaskedBgImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.59,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/MaskImage.png"),
            colorFilter: new ColorFilter.mode(COLOR_BLUEMASK.withOpacity(0.2),BlendMode.color),
          )
      ),
    );
  }
}
