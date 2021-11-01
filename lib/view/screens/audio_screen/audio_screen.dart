import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_screen/widgets/audio.dart';
import 'package:provider/provider.dart';
import 'package:mr_empowerment/providers/audio_provider.dart';

class AudioScreen extends StatelessWidget {
  static const routeName = '/audio-screen';
  // const AudioScreen({Key? key}) : super(key: key);
  //  final String title;
  //  final String description;
  //
  //  AudioScreen(this.title, this.description);
  @override
  Widget build(BuildContext context) {
    final routeArgsId = ModalRoute.of(context)!.settings.arguments as String;
    final audioData = Provider.of<AudioProvider>(context, listen: false)
        .findById(routeArgsId);

    // final audioTitle = routeArgs['title'];
    final String? audioTitle = audioData.title;
    // final audioDescription = routeArgs['description'];
    final audioDescription = audioData.description;
    // final audioFile = routeArgs['audio'];
    final audioFile = audioData.audio;
    return Scaffold(
      appBar: AppBar(
        title: Text(audioTitle!),
      ),
      body: Audio(audioFile, audioDescription, audioTitle),
    );
  }
}
