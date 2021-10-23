import 'package:flutter/material.dart';

class LibraryModel{
  final String? id;
  final String? title;
  final String? description;
  final String? image;

 const LibraryModel({
    @required this.id,@required this.image, @required this.title, @required this.description});
}
