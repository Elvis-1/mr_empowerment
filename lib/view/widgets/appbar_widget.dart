import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_list_screens/widgets/profile_image.dart';



String name = 'Dr Augustine';
String image = '/assets/images/el1.jpg';

PreferredSizeWidget appbarWidget(BuildContext context){
  return AppBar(
    backgroundColor: Color(0xFFfcfcfc),
    title: Text('Audios', style:Theme.of(context).textTheme.title ),
    elevation: 0,
    toolbarHeight: 100,
    actions: [
      ProfileImage(context,name,image),
    ],

  );
}
