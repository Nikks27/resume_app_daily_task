import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/utils/Id%20Card%20Registration/registration2.dart';

class IdPage extends StatefulWidget {
  const IdPage({super.key});

  @override
  State<IdPage> createState() => _IdPageState();
}

class _IdPageState extends State<IdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          height: 500,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer,
                        )
                      ]
                  ),
                  child: Center(
                    child:  Text("ID CARD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 25),),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.black,
                  backgroundImage: (fileimg!=null)?FileImage(fileimg!):null,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 10,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("First Name : "+fistname,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                      Text("Last Name : "+lastname,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                      Text("Address : "+address,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                      Text("Email : "+email,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                      Text("Phone No. : "+number,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                      Text("BOD : "+Birthdate,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}