
import 'package:flutter/material.dart';

import 'Log in/login.dart';
import 'Log in/signup.dart';
import 'gmail.dart';
import 'google.dart';
import 'googleLogIn/google1.dart';
import 'googleLogIn/google2.dart';
import 'googleLogIn/google3.dart';


class gmail extends StatelessWidget {
  const gmail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => email(),
        '/password' : (context) => password(),
        '/successfull' : (context) => successfull(),

      }
    );
  }
}


