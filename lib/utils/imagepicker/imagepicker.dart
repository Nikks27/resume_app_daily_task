import 'package:flutter/material.dart';

class imagepicker extends StatefulWidget {
  const imagepicker({super.key});

  @override
  State<imagepicker> createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'image picker',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          toolbarHeight: 80,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.black
              ),
            )
          ],
        ),
      ),
    );
  }
}
