import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  final String? video;
  Video(this.video);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        // 'https://flutter.github.io
        // /assets-for-api-docs/assets/videos/bee.mp4')
        widget.video!)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          Container(
            child: Center(
              child: Text('About to play'),
            ),
          );
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: _controller!.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller!.value.aspectRatio,
                  child: VideoPlayer(_controller!),
                )
              : Container(),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.fast_rewind_rounded),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _controller!.value.isPlaying
                      ? _controller!.pause()
                      : _controller!.play();
                });
              },
              icon: Icon(
                _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.fast_forward_rounded),
            )
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }
}
