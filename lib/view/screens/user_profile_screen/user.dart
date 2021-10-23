import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  // const User({Key? key}) : super(key: key);
  final String? image;
  final String? name;
  final String? email;
  User(this.image, this.name,this.email);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Center(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround
                ,
                children: [
                  SizedBox(height: 150,),
                  Text('Profile', style: TextStyle(
                      color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  ClipRRect(
                         borderRadius: BorderRadius.circular(125.0),
                         child: Image.asset(
                           image!,
                           height: 250.0,
                           width: 250.0,

                           fit: BoxFit.fill,
                         ),
                       ),
                ],
              )
                ),



            ],
        ),
        SizedBox(height: 30,),
        Text(name!, style: TextStyle(color: Colors.black),),
        Text(email!),
      ],
    );
  }
}
