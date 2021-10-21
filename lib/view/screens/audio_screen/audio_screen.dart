import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_screen/widgets/audio.dart';
import 'package:mr_empowerment/view/screens/video_screen/widgets/video.dart';


class AudioScreen extends StatelessWidget {
  static const routeName = '/audio-screen';
  // const AudioScreen({Key? key}) : super(key: key);
  //  final String title;
  //  final String description;
  //
  //  AudioScreen(this.title, this.description);
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final audioTitle = routeArgs['title'];
    final audioDescription = routeArgs['description'];
    final audioFile = routeArgs['audio'];
    return Scaffold(
      appBar: AppBar(
        title:Text(audioTitle!),
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Center(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children:[
                  Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.deepOrange,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   color: Colors.brown
                    // ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child: Text('Song Title goes here',
                      style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),
                  Container(
                    child: Text('details', style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: null, icon: Icon(Icons.fast_rewind_rounded),),
                      IconButton(
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: null,
                        icon: Icon(
                          Icons.play_arrow,
                        ),
                      ),
                      IconButton(
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: null, icon: Icon(Icons.fast_forward_rounded),)
                    ],
                  ),
                ]

              ),
            )
          // child:Text('Good'),
    ),
      ),
    );
  }
}
