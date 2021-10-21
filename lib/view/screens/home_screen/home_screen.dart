import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_list_screens/widgets/audio_item.dart';
import 'package:mr_empowerment/view/screens/home_screen/widget/home_library.dart';
import 'package:mr_empowerment/view/screens/home_screen/widget/home_video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeVideo(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                         Container(
                          width: 120,
                          height: 220,
                          child: Center(
                            child: AudioItem(
                                audio: 'Audio',
                                title: 'Title',
                                image: 'assets/images/dr.jpg', description:'coming soon'),
                          ),
                        ),


                      Container(
                        width:120,
                        height: 220,
                        child: AudioItem(
                            audio: 'Audio',
                            title: 'Title',
                            image: 'assets/images/dr.jpg', description:'coming soon'),
                      ),

                    ],
                  ),
             SizedBox(height: 10,),
             HomeLibrary(),
            ],
          ),
        ),
      ),
    );
  }
}
