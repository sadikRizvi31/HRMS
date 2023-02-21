import 'package:flutter/material.dart';

import 'package:hrms/Pages/LoginScreen/components/RootUI.dart';
import 'package:hrms/Utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: COLOR_WHITE,
        body: RootUI(),
      ),
    );
  }
}
