import 'package:flutter/cupertino.dart';
import 'package:mr_empowerment/data/model/video_model.dart';

class VideoProvider with ChangeNotifier{

  List<VideoModel> _videos = [
    VideoModel(
        id:'a1',
        title: 'first video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:'assets/audio/audio_1.mp3'

    ),
    VideoModel(
        id:'a1',
        title: 'second video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:'assets/audio/audio_1.mp3'

    ),
    VideoModel(
        id:'a1',
        title: 'third video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:'assets/audio/audio_1.mp3'

    ),
    VideoModel(
        id:'a',
        title: 'fourth video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:'assets/audio/audio_1.mp3'

    ),
  ];

  List<VideoModel> get videos {
    return [..._videos];
  }
}