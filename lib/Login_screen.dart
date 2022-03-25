import 'package:flutter/material.dart';

import 'Registration_screen.dart';
import 'Reusable widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image(
                      image: AssetImage(
                        'assets/images/login.png',
                      ),
                      height: 200.0,
                      width: 200.0,
                    ),
                  ),
                ),
                Text(
                  'Welcome back Hagar!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Login existant account of Your Accountant App',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TxtFld(
                  label: 'Email',
                  picon: Icon(Icons.person_outline),
                  keyType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TxtFld(
                  security: true,
                  label: 'Password',
                  picon: Icon(Icons.lock_open),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 50.0,
                  minWidth: 170.0,
                  child: Text('LOG IN',
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
                Text(
                  'Or connect using',
                  style: TextStyle(
                    // fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 140.0,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/facebook.png',
                              ),
                              height: 20.0,
                              width: 20.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.blue.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 140.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/google.png',
                              ),
                              height: 20.0,
                              width: 20.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.red.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration()),
                        );
                      },
                      child: Text('Sign Up'),
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
