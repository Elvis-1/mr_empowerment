import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_screen/widgets/audio.dart';
import 'package:mr_empowerment/view/screens/tab_screen/tab_screen.dart';
import 'package:mr_empowerment/view/widgets/appbar_widget.dart';
import '../../../data/datasource/audio_dummy_data.dart';
import './widgets/profile_image.dart';
import './widgets/audio_item.dart';

class AudioListScreen extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: audios.length,
                itemBuilder: (ctx, index){
                  return AudioItem(
                      audio:audios[index].title,
                      title: audios[index].title,
                      image: audios[index].image,
                      description: audios[index].description);
                },

              );


  }
}
