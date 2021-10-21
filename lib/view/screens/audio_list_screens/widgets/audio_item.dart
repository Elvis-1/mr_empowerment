import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_screen/audio_screen.dart';


class AudioItem extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
 final  String title;
  final String image;
  final String description;
  final String audio;
  
  AudioItem({required this.audio, required this.title, required this.image, required this.description});
  void selectAudio(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(AudioScreen.routeName, arguments: {
      'title' : title,
    'description' : description,
      'audio':audio
    });
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() { return  selectAudio(context);},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 6),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown,
                border:Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(title),
                  Text(description, style: TextStyle(
                      color: Colors.white
                  ),),
                ],
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 150,

              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image, fit: BoxFit.cover,
                ),
              ),

            ),
          ],
        ),
      ),
    );

  }
}
