import 'package:flutter/material.dart';
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
    return  SingleChildScrollView(
        child:User(user[0].image,user[0].name,user[0].email,));



  }
}
