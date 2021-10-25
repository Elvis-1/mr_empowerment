import 'package:flutter/material.dart';
import 'package:mr_empowerment/data/model/audio_model.dart';

class AudioProvider with ChangeNotifier{

  List<AudioModel> _audios = [
    AudioModel(
        id:'a1',
        title: 'first audio',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'

    ),
    AudioModel(
        id:'a2',
        title: 'second audio',
        description: 'This is second audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'

    ),
    AudioModel(
        id:'a3',
        title: 'third audio',
        description: 'This is third audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/dr.jpg',
        audio:'assets/audio/audio_1.mp3'
    ),
  ];

  List<AudioModel>  get audios {
        return [..._audios];
}

  AudioModel findById(String id)
  {
    return audios.firstWhere((element) =>
    element.id == id);
  }

void addAudio(){
    // _audios.add(value);
    // notifyListeners();
}

}