import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hrms/Pages/ProfilePage/components/profileContainer.dart';
import 'package:hrms/Widgets/appBar.dart';

import 'components/dottedBorder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(title: "My Profile"),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
        child: profileContainer(),
      ),
    );
  }
}
