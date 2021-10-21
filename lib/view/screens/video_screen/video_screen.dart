import 'package:flutter/material.dart';
import 'package:mr_empowerment/data/model/video_model.dart';
import 'package:mr_empowerment/view/screens/video_screen/widgets/VideoItem.dart';
import './widgets/video.dart';

class VideoScreen extends StatelessWidget {
  //const VideoScreen({Key? key}) : super(key: key);
  final List<VideoModel> videos;
  VideoScreen(this.videos);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (ctx, index){
      return VideoItem(
          image:videos[index].image,
          title: videos[index].title,description: videos[index].description);
          }),
    );
  }
}
