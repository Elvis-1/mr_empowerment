import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/video_screen/widgets/video_List_item.dart';
import '../../../../data/datasource/video_dummy_data.dart';
import 'package:provider/provider.dart';
import 'package:mr_empowerment/providers/video_provider.dart';


class VideoListScreen extends StatelessWidget {
 // const VideoListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final videoData = Provider.of<VideoProvider>(context);
    final videos = videoData.videos;
    return VideoListItem(videos);


  }
}
