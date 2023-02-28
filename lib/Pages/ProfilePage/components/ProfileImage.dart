import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: size.height * 0.12,
          width: size.width * 0.22,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage("https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.circle_sharp,size: 18,color: Colors.lightGreenAccent,),
        )
      ],
    );
  }
}
