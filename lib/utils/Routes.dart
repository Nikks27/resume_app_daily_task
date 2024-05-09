
import 'package:flutter/material.dart';

import 'gmail.dart';


class gmail extends StatelessWidget {
  const gmail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
      },
    );
  }
}


