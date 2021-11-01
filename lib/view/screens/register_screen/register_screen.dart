import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_empowerment/view/screens/login_screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const routeName = '/register-screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _form = GlobalKey<FormState>();
  var user = [];

  void _saveForm() {
    final isValid = _form.currentState!.validate();
    if (isValid != true) {
      return;
    }
    _form.currentState!.save();
    // var name = user.forEach((element) {
    //    return element;
    //  });
    print(user[0]);
    print(user[1]);
    print(user[2]);
    print(user[3]);
    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('soon'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: _form,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 40,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "First Name",
                      ),
                      textInputAction: TextInputAction.next,
                      onSaved: (value) {
                        user.add(value);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Your first name is important";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Last name can not be empty";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        user.add(value);
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "username",
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "user name can not be empty";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        user.add(value);
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "phone number"),
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "phone number can not be empty";
                        }
                        if (num.tryParse(value) == null) {
                          return "You can only insert numbers";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        user.add(value);
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onSaved: (value) {
                        user.add(value);
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password can not be empty";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) {
                        _saveForm();
                      },
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            border: Border.all(
                                width: 1,
                                color: Theme.of(context).primaryColor)),
                        child: TextButton(
                            onPressed: _saveForm,
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'RobotoCondensed',
                                fontSize: 20,
                              ),
                            ))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
