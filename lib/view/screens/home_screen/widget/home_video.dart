import 'package:flutter/material.dart';

class HomeVideo extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
      onTap: null,
        child: Container(
        height: 300,
        margin: EdgeInsets.symmetric( horizontal: 15),
        width: double.infinity,
   decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent,width: 1, ),
        borderRadius: BorderRadius.circular(10)
),
   child: Center(
child: Stack(
    children: [
      Container(
          height: 400,
          child: Image.asset('assets/images/video.jpg', fit: BoxFit.fill,)),
      Center(
        child: IconButton(
    onPressed: null,
    icon: Icon(Icons.play_arrow),
    iconSize: 150,
          color: Colors.red,
          focusColor: Colors.red,
    ),
      ),
    ],
    ),
        ),
      ),

    ),
    );
  }
}
