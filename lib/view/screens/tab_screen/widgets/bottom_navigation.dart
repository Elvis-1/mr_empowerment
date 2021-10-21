import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_list_screens/audio_list_screen.dart';
import 'package:mr_empowerment/view/screens/library.dart';
import 'package:mr_empowerment/view/screens/podcast_screen.dart';
import 'package:mr_empowerment/view/screens/video_screen/video_list_screen.dart';
import 'package:mr_empowerment/view/screens/video_screen/video_screen.dart';

class BottomNavBar extends StatefulWidget {
  // const BottomNavBar({Key? key}) : super(key: key);


  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
   List<Widget> _screens  = [
    AudioListScreen(),PodCastScreen(),VideoListScreen(),LibraryScreen(),
  ];
  int _selectIndex = 0;

  void _selectScreen(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('text'),),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor:Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            title: Text('Audios'),

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.podcasts),
              title: Text('Podcasts')
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.videocam),
              title: Text('Videos')
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.menu_book_sharp),
            title:Text('Library'),
          )
        ],
      ),
    );
  }
}
