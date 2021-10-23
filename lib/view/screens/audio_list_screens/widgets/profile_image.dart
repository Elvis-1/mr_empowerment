import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/user_profile_screen/user_profile_screen.dart';

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


          child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('assets/images/dr.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.contain,)),


      );
  ;
}