import 'package:flutter/cupertino.dart';

class VideoModel {
  final String? id;
  final String? title;
  final String? description;
  final String? image;
  final String? video;
  
  const VideoModel({@required this.video, @required this.id, @required this.title, @required this.description, @required this.image});
}