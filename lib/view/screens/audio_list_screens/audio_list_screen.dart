import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mr_empowerment/providers/audio_provider.dart';


import './widgets/audio_item.dart';

class AudioListScreen extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final audioData = Provider.of<AudioProvider>(context);
    final audios= audioData.audios;
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
                      id:audios[index].id,
                      audio:audios[index].title,
                      title: audios[index].title,
                      image: audios[index].image,
                      description: audios[index].description);
                },

              );


  }
}
