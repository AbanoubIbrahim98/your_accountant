import 'package:flutter/material.dart';
import 'package:login_screen_task/Login_screen.dart';
import 'Reusable widgets.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Let\'s Get Started',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Create an account to Q Allure to get all features',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TxtFld(
                  label: 'Name',
                  picon: Icon(Icons.person_outline),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TxtFld(
                  label: 'Email',
                  picon: Icon(Icons.email_outlined),
                  keyType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TxtFld(
                  label: 'Phone',
                  picon: Icon(Icons.phone_android_rounded),
                  keyType: TextInputType.phone,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TxtFld(
                  security: true,
                  label: 'Password',
                  picon: Icon(Icons.lock_open),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TxtFld(
                  security: true,
                  label: 'Confirm Password',
                  picon: Icon(Icons.lock_open),
                ),
                SizedBox(
                  height: 30.0,
                ),
                MaterialButton(
                  onPressed: () {
                  },
                  height: 50.0,
                  minWidth: 170.0,
                  child: Text('Create',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  color: Colors.blue.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                             Navigator.pop(context);
                      },
                      child: Text('Login here'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
