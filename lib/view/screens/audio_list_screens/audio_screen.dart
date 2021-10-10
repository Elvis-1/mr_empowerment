import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/data/model/Audio_model.dart';
import './widgets/profile_image.dart';
import './widgets/audio_item.dart';

class AudioScreen extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  final List<AudioModel> audios = [
    AudioModel(
        id:'a1',
        title: 'first audio',
        description: 'This is first audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a2',
        title: 'second audio',
        description: 'This is second audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a3',
        title: 'third audio',
        description: 'This is third audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
    AudioModel(
        id:'a4',
        title: 'fourth audio',
        description: 'This is fourth audio',
        image: 'assets/images/el1.jpg',
        date: DateTime.now()
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xFFfcfcfc),
      title: Text('Audios', style: TextStyle(
        fontSize: 40,
        color: Colors.black,
      ),),
      elevation: 0,
      toolbarHeight: 100,
      actions: [
           ProfileImage(),
         ],

    ),
      body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: audios.length,
                itemBuilder: (ctx, index){
                  return AudioItem(
                      title: audios[index].title,
                      image: audios[index].image,
                      description: audios[index].description);
                },

              ),





      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor:Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.mic),
            title: Text('Audios'),

          ),
         BottomNavigationBarItem(
             icon: Icon(Icons.search),
           title: Text('Search')
         ),

          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('Video')
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.video_label,),
            title:Text('Video'),
          )
        ],
      ),
    );
  }
}
