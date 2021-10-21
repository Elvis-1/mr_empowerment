import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AudioModel {
 final String id;
 final String title;
  final String description;
  final String image;
 final  String audio;


 const AudioModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.audio
 });



  // List<AudioModel> get audios {
  //   return [..._audios];
  // }
}