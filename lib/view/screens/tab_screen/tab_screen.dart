import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/audio_list_screens/audio_list_screen.dart';
import 'package:mr_empowerment/view/screens/audio_screen/audio_screen.dart';
import 'package:mr_empowerment/view/screens/home_screen/home_screen.dart';
 import 'package:mr_empowerment/view/screens/library_screen/library_screen.dart';
import 'package:mr_empowerment/view/screens/podcast_screen/podcast_screen.dart';
import 'package:mr_empowerment/view/screens/user_profile_screen/user_profile_screen.dart';
import 'package:mr_empowerment/view/screens/video_screen/video_list_screen.dart';
import 'package:mr_empowerment/view/screens/video_screen/video_screen.dart';
import 'package:mr_empowerment/view/widgets/appbar_widget.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, dynamic>> _screens  = [
  { 'page':HomeScreen(), 'title':'Home'},
    {'page':AudioListScreen(), 'title':'Audios'},
  { 'page':VideoListScreen(), 'title':'Videos'},
    {'page':LibraryScreen(), 'title':'EBOOKS'}
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
      appBar:
      appbarWidget(context,_screens[_selectIndex]['title']  ==
          'Home'? '' : _screens[_selectIndex]['title'] ),
      body:_screens[_selectIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor:Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        onTap: _selectScreen,
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            title: Text('Audios'),

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
