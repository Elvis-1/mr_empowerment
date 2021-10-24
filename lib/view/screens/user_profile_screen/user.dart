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
                height: 200,
                decoration: BoxDecoration(
                  // color: Color(0xFF083663),
                  color: Color(0xFF2D365C),
                ),
              ),
              Center(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround
                ,
                children: [
                  SizedBox(height: 10,),
                  Text('Profile', style: TextStyle(
                      color: Colors.white, fontSize: 30,
                      fontFamily: 'RobotoCondensed',
                      fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: ClipRRect(
                           borderRadius: BorderRadius.circular(100.0),
                           child: Image.asset(
                             image!,
                             height: 200.0,
                             width: 200.0,

                             fit: BoxFit.fill,
                           ),
                         ),
                  ),
                ],
              )
                ),



            ],
        ),
        SizedBox(height: 30,),
        Text(name!, style: TextStyle(color: Color(0xFF2D365C),
            fontWeight:FontWeight.bold, fontSize: 30,
        fontFamily: 'RobotoCondensed',
        ),),
        Text(email!),
      ],
    );
  }
}
