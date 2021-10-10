import 'package:flutter/foundation.dart';

class AudioModel {
  String id;
  String title;
  String description;
  String image;
  DateTime date;

  AudioModel({
    required
    this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.date});



  // List<AudioModel> get audios {
  //   return [..._audios];
  // }
}