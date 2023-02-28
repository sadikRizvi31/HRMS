import 'package:flutter/material.dart';
import 'package:hrms/Pages/LoginScreen/LoginScreen.dart';
import 'package:hrms/Pages/ProfilePage/ProfilePage.dart';

import '../Utils/constants.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void handleClick(String value) {
      switch (value) {
        case 'My Profile':
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
          break;
        case 'Logout':
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
          break;
      }
    }

    ThemeData themeData = Theme.of(context);

    return PopupMenuButton<String>(
      icon: Container(
        margin: EdgeInsets.only(right: 2,top: 5,bottom: 5),

        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: NetworkImage("https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: COLOR_BLUEMASK.withOpacity(0.5),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      onSelected: handleClick,
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: "My Profile",
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Parag Shah",style: themeData.textTheme.headline4,textAlign: TextAlign.start,),
                    Text("parag.redjinni@gmail.com",style: themeData.textTheme.subtitle2,),
                  ],
                )
              ],
            ),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            value: "My Profile",
            child: Text("My Profile",style: textLight(Color_BLACK, 14),),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            value: "Logout",
            child: Text("Logout",style: textLight(Color_BLACK, 14),),
          ),
        ];
      },
    );
  }
}
