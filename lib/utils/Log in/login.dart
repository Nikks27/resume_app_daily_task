
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50,left: 0),
            child: Image.network('https://freethinking.org/wp-content/uploads/2023/04/health-featured-image.png'),
          ),
          SizedBox(height: 135,),
          Padding(
            padding:  EdgeInsets.only(top: 40,left: 1),
            child: Column(
              children: [
                Text("Build Awesome Apps",style: TextStyle(color: Colors.black,fontSize: 38,fontWeight: FontWeight.w700,letterSpacing: 1),),
                Text("Let's put your creativtity on the",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 1),),
                Text("development highway",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 1),),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 40,left: 20),
                  height: 75,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1.5),)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40,left: 30),
                height: 75,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("SIGNUP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1.5),)),
              )
            ],
          )
        ],
      ),
    );
  }
}