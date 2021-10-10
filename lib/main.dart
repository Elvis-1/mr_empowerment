import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_list_screens/audio_screen.dart';
import 'view/screens/audio_list_screens/audio_screen.dart';
import './data/model/Audio_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: null,
      ),
      home: AudioScreen(),
    );
  }
}

