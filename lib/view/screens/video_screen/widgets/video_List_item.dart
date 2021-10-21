import 'package:flutter/material.dart';
import 'package:mr_empowerment/data/model/video_model.dart';
import 'package:mr_empowerment/view/screens/video_screen/widgets/VideoItem.dart';


class VideoListItem extends StatelessWidget {
  //const VideoListitem({Key? key}) : super(key: key)
  final List<VideoModel> videos;
  VideoListItem(this.videos);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (ctx, index){
      return VideoItem(
          description: videos[index].description,
          title: videos[index].title,
          image: videos[index].image);}
    )
    );
  }
}
