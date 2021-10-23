import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/video_screen/widgets/video_List_item.dart';
import '../../../../data/datasource/video_dummy_data.dart';
class VideoListScreen extends StatelessWidget {
 // const VideoListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
      ),
      body:VideoListItem(videos)
    );

  }
}
