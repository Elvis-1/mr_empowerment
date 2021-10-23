import 'package:flutter/material.dart';

class PodCastScreen extends StatelessWidget {
  const PodCastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('List of podcasts', style: TextStyle(color:Theme.of(context).primaryColor,)),
    );
  }
}
