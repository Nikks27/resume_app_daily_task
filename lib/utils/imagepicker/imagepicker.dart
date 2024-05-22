import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imgpicker = ImagePicker();
File? fileImage, Image;
XFile? xFileImage;

class imagepick extends StatefulWidget {
  const imagepick({super.key});


  @override
  State<imagepick> createState() => _imagepickState();
}

class _imagepickState extends State<imagepick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
            'Image Picker',style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: (fileImage != null) ?
                  DecorationImage(
                    fit: BoxFit.cover,
                    image: FileImage(fileImage!),
                  )
                      : null
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: () async {
                  xFileImage= await imgpicker.pickImage(source: ImageSource.gallery);

                  setState(() {
                    if (xFileImage != null) {
                      fileImage = File(xFileImage!.path);

                    }
                  });
                }, child: Icon(Icons.image, size: 60,)),

                InkWell(onTap: () async{
                  xFileImage= await imgpicker.pickImage(source: ImageSource.camera);
                  setState(() {
                    if (xFileImage != null) {
                      fileImage = File(xFileImage!.path);

                    }
                  });
                }, child: Icon(Icons.camera_alt_outlined, size: 60))
              ],
            ),
          ],
        ),
      ),
    );
  }
}