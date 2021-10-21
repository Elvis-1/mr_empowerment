import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/user_profile_screen.dart';

void gotoProfile(BuildContext context, String userName, String userImage){
  Navigator.of(context).pushNamed(UserProfileScreen.routeName,arguments: {
    'name': userName,
    'image': userImage
  });
}

Widget ProfileImage(BuildContext context, name,image){
  return InkWell(
    onTap: (){
      gotoProfile(context, name, image);
    },
      child :Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(

        ),
        child: CircleAvatar(

          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/dr.jpg', fit: BoxFit.cover,)),
        ),

      )
  );
}