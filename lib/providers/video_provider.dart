import 'package:flutter/cupertino.dart';
import 'package:mr_empowerment/data/model/video_model.dart';

import 'package:http/http.dart' as http;

class VideoProvider with ChangeNotifier {
  List<VideoModel> _videos = [
    VideoModel(
        id: 'a1',
        title: 'first video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    VideoModel(
        id: 'a1',
        title: 'second video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    VideoModel(
        id: 'a1',
        title: 'third video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    VideoModel(
        id: 'a',
        title: 'fourth video',
        description: 'This is first audio',
        image: 'assets/images/dr.jpg',
        video:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  ];

  List<VideoModel> get videos {
    return [..._videos];
  }

  VideoModel fetchVideo(String id){
      const vid = 'http://172.20.10.2:6000/api/'
  }
}
