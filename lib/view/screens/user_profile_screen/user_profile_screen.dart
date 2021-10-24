import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/home_screen/home_screen.dart';
import 'package:mr_empowerment/view/screens/tab_screen/widgets/bottom_navigation.dart';
import 'package:mr_empowerment/view/screens/user_profile_screen/user.dart';
import 'package:mr_empowerment/data/datasource/dummy_user_data.dart';
class UserProfileScreen extends StatelessWidget {
  static const routeName ='/user-profile-screen';
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    // final name = routeArgs['name'];
    // final image = routeArgs['image'];
    // print(name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF2D365C),
        actions: [
          IconButton(
          onPressed: () {
      // Navigate back to first route when tapped.
            Navigator.pop(context);
    },
      icon: Container(
          decoration: BoxDecoration(
            color: Color(0xFF2D365C),
          ),
          child: Text('Go Back',)),
    ),
        ],
        elevation: 0,
      ),
      body:User(user[0].image,user[0].name,user[0].email,),
      // bottomNavigationBar: BottomNavBar(),
    );




  }
}
