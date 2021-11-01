import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

// This package and widget is for playing network videos, we tentatively using it for local audio
class Audio extends StatefulWidget {
  final String? audio;
  final String? description;
  final String? title;
  Audio(this.audio, this.description, this.title);

  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        // 'https://flutter.github.io
        // /assets-for-api-docs/assets/videos/bee.mp4')
        widget.audio!)
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
          height: 20,
        ),
        Text(
          widget.title!,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: "RobotoCondensed",
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        Text(
          widget.description!,
          softWrap: true,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              iconSize: 50,
              onPressed: null,
              icon: Icon(
                Icons.fast_rewind_rounded,
                color: Theme.of(context).primaryColor,
              ),
            ),
            IconButton(
              iconSize: 50,
              onPressed: () {
                setState(() {
                  _controller!.value.isPlaying
                      ? _controller!.pause()
                      : _controller!.play();
                });
              },
              icon: Icon(
                _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
                color: Theme.of(context).primaryColor,
              ),
            ),
            IconButton(
              iconSize: 50,
              onPressed: () {},
              icon: Icon(
                Icons.fast_forward_rounded,
                color: Theme.of(context).primaryColor,
              ),
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


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';


// class MyAudio extends StatefulWidget {
//   final String audio_file;

//   MyAudio(this.audio_file);
//   @override
//   _MyAudioState createState() => _MyAudioState();
// }

// class _MyAudioState extends State<MyAudio>

//     with SingleTickerProviderStateMixin {


//   late AnimationController iconController; // make sure u have flutter sdk > 2.12.0 (null safety)

//   bool isAnimated = false;
//   bool showPlay = true;
//   bool shopPause = false;

//   AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     iconController = AnimationController(
//         vsync: this, duration: Duration(milliseconds: 1000));

//     audioPlayer.open(
//         Audio(widget.audio_file),
//autoStart: false,showNotification: true);
//   }


//   @override
//   Widget build(BuildContext context) {
//     return  Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.network("https://i.pinimg.com/originals/f7/3a/5b/f73a5b4b7262440684a2b5c39e684304.jpg",width: 300,),
//               SizedBox(height: 30,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InkWell(child: Icon(CupertinoIcons.backward_fill),onTap: (){
//                     audioPlayer.seekBy(Duration(seconds: -10));
//                   },),
//                   GestureDetector(
//                     onTap: () {
//                       AnimateIcon();
//                     },
//                     child: AnimatedIcon(
//                       icon: AnimatedIcons.play_pause,
//                       progress: iconController,
//                       size: 50,
//                       color: Colors.black,
//                     ),
//                   ),
//                   InkWell(child: Icon(CupertinoIcons.forward_fill),onTap:
// (){
//                     audioPlayer.seekBy(Duration(seconds: 10));
//                     audioPlayer.seek(Duration(seconds: 10));
//                     audioPlayer.next();
//                   },),
//                 ],
//               ),

//             ],
//           ),
//         );
//   }

//   void AnimateIcon() {
//     setState(() {
//       isAnimated = !isAnimated;

//       if(isAnimated)
//       {
//         iconController.forward();
//         audioPlayer.play();
//       }else{
//         iconController.reverse();
//         audioPlayer.pause();
//       }


//     });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     iconController.dispose();
//     audioPlayer.dispose();
//     super.dispose();
//   }
// }