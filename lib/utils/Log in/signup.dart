import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                 children: [
                   Image.network('https://freethinking.org/wp-content/uploads/2023/04/health-featured-image.png',height: 250,width: 250,),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 1,top: 10, bottom: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Welcome Back',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1),),
                   Text("Make it Work,make it right,make it fast",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1),),
                 ],
               ),
             ),
             SizedBox(height: 5,),
             TextField(
               style: TextStyle(fontSize: 20,),
               decoration: InputDecoration(
                 prefix: Icon(
                     Icons.person_outline,
                   size: 20,
                 ),
                 hintText: "E mail",
                 hintStyle: TextStyle(
                   fontSize: 20,
                   height: 2.5,
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.black54,
                     width: 3
                   ),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.black,
                     width: 20,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.black,
                     width: 2,
                   )
                 )
               ),
             ),
              SizedBox(height: 8,),
             TextField(
               obscureText: true,
               keyboardType: TextInputType.number,
               style: TextStyle(fontSize: 20),
               decoration: InputDecoration(
                 suffixIcon:Padding(
                   padding: const EdgeInsets.all(28),
                   child: Icon(Icons.remove_red_eye,size: 30,),
                 ),
                 prefixIcon: Icon(
                   Icons.fingerprint,
                   size: 30,
                 ),
                 hintText: "password",
                 hintStyle: TextStyle(
                   fontSize: 20,
                   height: 1,
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.black54,
                     width: 4,
                   ),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.black54,
                     width: 20,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.black,
                     width: 2,
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20,right: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text("Forget Password ? ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.blue.shade500),),
                 ],
               ),
             ),
             SizedBox(height: 20,),
             Column(
               children: [
                 Container(
                   height: 80,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),)),
                 ),
                 SizedBox(height: 5,),
                 Text("OR",style: TextStyle(fontSize: 20),),
                 Container(
                   height: 80,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                       width: 3,
                       color: Colors.black,
                     ),
                   ),
                   child: Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png',height: 30,),
                         Text("       Sign-In with Google",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,letterSpacing: 1),),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Don't have an Account?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                     Text("Signup",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blue),),
                   ],
                 )
               ],
             )
           ],
        ),
      ),
    );
  }
}
