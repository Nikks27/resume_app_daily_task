// import 'dart:html';
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// ImagePick imagePicker = Imagepick();
//  File ? fileImage;
//
//
//
// class registration extends StatefulWidget {
//   const registration({super.key});
//
//   @override
//   State<registration> createState() => _registrationState();
// }
//
// class _registrationState extends State<registration> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.brown,
//         title: Text(
//           'Registration Form',
//           style: TextStyle(
//               fontSize: 27, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Column(
//           children: [
//             Center(
//               child: Container(
//                 margin: EdgeInsets.only(top: 20,left: 145),
//                 height: 130,
//                 width: 130,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   shape: BoxShape.circle,
//                   image: (fileImage != null)?
//                       DecorationImage(
//                         fit: BoxFit.cover,
//                         image: FileImage(fileImage),
//                       )
//                       : null
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(onPressed: () async {
//                   File ? fileimage =
//                       await imagePicker.pickImage(source : ImagePick.camera);
//
//                 },)
//               ],
//             )
//           ],
//       ),
//     );
//   }
// }
