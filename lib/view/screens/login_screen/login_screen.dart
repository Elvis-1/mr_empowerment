import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/tab_screen/tab_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('soon'),
      ),
      body:  Stack(
        children: [
          Container(

              width: double.infinity,
              child: Image.asset('assets/images/splash.png',
                fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 100,),
                  Text('Login', style: TextStyle(color: Theme.of(context).primaryColor,
                      fontSize: 40, fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold),),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Theme.of(context).primaryColor)
                    ),
                    child: TextFormField(

                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Theme.of(context).primaryColor)
                      ),
                      child: TextFormField()),
                  Container(
                      margin: EdgeInsets.symmetric(vertical:20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Theme.of(context).primaryColor)
                      ),
                      child: TextFormField(

                      )),
                  Container(

                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          border: Border.all(width: 1,
                              color: Theme.of(context).primaryColor)
                      ),
                      child:  TextButton(onPressed:(){
                        Navigator.of(context).pushReplacementNamed(
                          TabsScreen.routeName
                        );
                      },
                          child: Text('Login', style:TextStyle(color:Colors.white,
                            fontFamily: 'RobotoCondensed',
                            fontSize: 20,
                          ) ,))),

                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
