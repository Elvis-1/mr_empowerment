import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mr_empowerment/data/model/video_model.dart';
import 'package:mr_empowerment/providers/video_provider.dart';
import 'package:mr_empowerment/view/screens/video_screen/widgets/VideoItem.dart';
import './widgets/video.dart';

class VideoScreen extends StatelessWidget {
  static const routeName = '/video-screen';
  //const VideoScreen({Key? key}) : super(key: key);
  // final List<VideoModel> videos;
  VideoScreen();
  @override
  Widget build(BuildContext context) {
    // final videoItem =
    // Provider.of<VideoProvider>(context, listen: false).videos;
    final argData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String? description = argData['description'];
    final String? title = argData['title'];
    final String? image = argData['image'];
    final String? video = argData['video'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Video(video),
    );

    // return Center(
    //   child: ListView.builder(
    //       itemCount: videos.length,
    //       itemBuilder: (ctx, index) {
    //         return VideoItem(
    //             image: videos[index].image,
    //             title: videos[index].title,
    //             description: videos[index].description);
    //       }),
    // );
  }
}
