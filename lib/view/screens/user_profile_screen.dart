import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/tab_screen/widgets/bottom_navigation.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName ='/user-profile-screen';
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final name = routeArgs['name'];
    final image = routeArgs['image'];
    print(name);
    return Scaffold(
      appBar: null,
      body: Center(child: Text(name!),),
        bottomNavigationBar: BottomNavBar()
    );

  }
}
