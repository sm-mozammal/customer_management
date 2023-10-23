import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ReusableImagePicker extends StatefulWidget {
   ReusableImagePicker({super.key,required this.onImageSelected});
   final Function(File) onImageSelected;


  @override
  State<ReusableImagePicker> createState() => _ReusableImagePickerState();
}

class _ReusableImagePickerState extends State<ReusableImagePicker> {
  File? imagePic;
  @override
  Widget build(BuildContext context) {
    return
            Column(
              children: [
                // imagePic != null ? Image.file(imagePic!,height: 150,width: 150,) : Text('Select An Image'),
                ElevatedButton(onPressed: (){
                  getImageFromCamera();
                }, child: Text('Take image')),
              ],
            );
  }

  void getImageFromCamera() async {
    final returnImage = await ImagePicker().pickImage(source: ImageSource.camera,imageQuality: 75);
    // if(imagePic)
    setState(() {
      imagePic = File(returnImage!.path);
      widget.onImageSelected(imagePic!);
    });

  }
}
