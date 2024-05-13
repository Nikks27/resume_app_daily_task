import 'package:flutter/material.dart';

class google extends StatefulWidget {
  const google({super.key});

  @override
  State<google> createState() => _googleState();
}

class _googleState extends State<google> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,right: 50),
                      child: Image(image:AssetImage("Assets/images/google.png"),height: 35,),
                    ),
                    Row(
                      children: [
                        Text('sing in',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
