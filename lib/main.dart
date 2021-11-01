import 'package:flutter/material.dart';
import 'package:mr_empowerment/providers/video_provider.dart';

import 'package:mr_empowerment/view/screens/audio_screen/audio_screen.dart';
import 'package:mr_empowerment/view/screens/login_screen/login_screen.dart';
import 'package:mr_empowerment/view/screens/reg_log_screen.dart';
import 'package:mr_empowerment/view/screens/register_screen/register_screen.dart';
import 'package:mr_empowerment/view/screens/tab_screen/tab_screen.dart';
import 'package:mr_empowerment/view/screens/user_profile_screen/user_profile_screen.dart';
import 'package:mr_empowerment/view/screens/video_screen/video_screen.dart';

import 'providers/audio_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: AudioProvider(),
          ),
          ChangeNotifierProvider.value(value: VideoProvider()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Mr Empowerment',
            theme: ThemeData(
              primaryColor: Color(0xFF2D365C),
              accentColor: Colors.amber,
              fontFamily: 'RobotoCondensed',
              textTheme: ThemeData.dark().textTheme.copyWith(
                      // body1: TextStyle(
                      // color:Color.fromRGBO(20, 51, 51, 1),
                      // ),
                      // body2: TextStyle(
                      // color: Color.fromRGBO(20, 51, 51, 1),
                      // ),
                      title: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 24,
                  )),
            ),
            // home: AudioListScreen(),
            routes: {
              '/': (ctx) => RegisterLoginScreen(),
              TabsScreen.routeName: (ctx) => TabsScreen(),
              AudioScreen.routeName: (ctx) => AudioScreen(),
              UserProfileScreen.routeName: (ctx) => UserProfileScreen(),
              RegisterScreen.routeName: (ctx) => RegisterScreen(),
              LoginScreen.routeName: (ctx) => LoginScreen(),
              VideoScreen.routeName: (ctx) => VideoScreen(),
            },
            onUnknownRoute: (settings) {
              return MaterialPageRoute(builder: (ctx) => AudioScreen());
            }));
  }
}
