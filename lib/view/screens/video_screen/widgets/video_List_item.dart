import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/video_screen/video_screen.dart';
import 'package:provider/provider.dart';
import 'package:mr_empowerment/providers/video_provider.dart';
import 'package:mr_empowerment/view/screens/video_screen/widgets/VideoItem.dart';

class VideoListItem extends StatelessWidget {
  //const VideoListitem({Key? key}) : super(key: key)
  // final List<VideoModel> videos;
  VideoListItem();

  @override
  Widget build(BuildContext context) {
    final videoData = Provider.of<VideoProvider>(context);
    final videos = videoData.videos;
    return Center(
        child: ListView.builder(
            itemCount: videos.length,
            itemBuilder: (ctx, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(VideoScreen.routeName, arguments: {
                    'description': videos[index].title,
                    'image': videos[index].image,
                    'video': videos[index].video,
                    'title': videos[index].title
                  });
                },
                child: VideoItem(
                    description: videos[index].description,
                    title: videos[index].title,
                    image: videos[index].image),
              );
            }));
  }
}
