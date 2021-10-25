import 'package:flutter/material.dart';

import 'package:mr_empowerment/view/screens/audio_screen/audio_screen.dart';
import 'package:mr_empowerment/view/screens/tab_screen/tab_screen.dart';
import 'package:mr_empowerment/view/screens/user_profile_screen/user_profile_screen.dart';

import 'providers/audio_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) {
        return AudioProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFF2D365C),
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'RobotoCondenced',
          textTheme: ThemeData.dark().textTheme.copyWith(
            body1: TextStyle(
              color:Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
            )
          ),
        ),
        // home: AudioListScreen(),
        routes: {
          '/' : (ctx) => TabsScreen(),
          AudioScreen.routeName : (ctx) => AudioScreen(),
          UserProfileScreen.routeName: (ctx)=> UserProfileScreen(),
        },
        onUnknownRoute:(settings){
          return MaterialPageRoute(builder: (ctx) =>AudioScreen());
        }
      ),
    );
  }
}

