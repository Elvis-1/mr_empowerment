import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioItem extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  String title;
  String image;
  String description;

  AudioItem({required this.title, required this.image, required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
      ),
      child: Stack(
       children: [
         Container(
           padding: EdgeInsets.only(top: 0),
           height: MediaQuery.of(context).size.height,
           width: double.infinity,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: Colors.brown,
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               SizedBox(height: 10,),
               SizedBox(height: 50,),
               Text(title),
               Text(description, style: TextStyle(
                 color: Colors.white
               ),),
             ],
           ),
      ),

         SizedBox(
           width: double.infinity,
           height: 300,
           child: Center(
             child: ClipRRect(
               borderRadius: BorderRadius.circular(10),
      child: Image.asset(image, fit: BoxFit.contain,
      ),
  ),
           ),
         ),
      ],
      ),
    );
  }
}
