import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/login_screen/login_screen.dart';
import 'package:mr_empowerment/view/screens/register_screen/register_screen.dart';

class RegisterLoginScreen extends StatelessWidget {
  const RegisterLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(

        child: GridTile(
          child: Image.asset('assets/images/splash.png', fit: BoxFit.cover,),
          footer: Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Container(
                  padding: EdgeInsets.only(top: 2, bottom: 2, right: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: FlatButton(
                      onPressed: (){
                        Navigator.of(context).
                        pushNamed(LoginScreen.routeName);
                      },
                      child: Text('Login', style: TextStyle(
                          fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold,
                          color: Colors.white),)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 2, bottom: 2, right: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: FlatButton(
                      onPressed: (){
                        Navigator.of(context).
                        pushNamed(RegisterScreen.routeName);
                      },
                      child: Text('Register', style: TextStyle(
                          fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),)),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
