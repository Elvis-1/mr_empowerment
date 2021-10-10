import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ProfileImage(){
  return Container(
    height: 50,
    width: 50,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(

      ),
      child: CircleAvatar(

        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/el1.jpg', fit: BoxFit.cover,)),
      ),

  );
}