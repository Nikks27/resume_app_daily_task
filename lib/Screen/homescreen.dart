import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('StatusBarTopic',style: TextStyle(color: Colors.white,fontSize: 26),),
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Colors.grey),
      ),
    );
  }
}