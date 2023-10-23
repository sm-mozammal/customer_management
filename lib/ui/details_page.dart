
import 'dart:io';
import 'package:customer_management/ui/widget/reusable_image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage({super.key,/* required this.customers */});
   // final customers;
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // get index => null;
  File? imagePic;
  File? imagePic1;
  @override
  Widget build(BuildContext context) {
    // print('details page data is :${widget.customers}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Text('Name: ${widget.customers!.customerName}'),
              // Text('Phone: ${widget.customers!.customerMobileNo}'),
              // Text('Address: ${widget.customers!.customerAddress}'),
              imagePic != null ? Image.file(imagePic!) : Text('Select An Image'),
              ReusableImagePicker(onImageSelected: (selectedImage){
                setState(() {
                  imagePic = selectedImage;
                });
              },),
              SizedBox(height: 10,),

              imagePic1 != null ? Image.file(imagePic1!) : Text('Select An Image'),
              ReusableImagePicker(onImageSelected: (selectedImage){
                setState(() {
                  imagePic1 = selectedImage;
                });
              },),
              // ReusableImagePicker(),
              // SizedBox(height: 10,),
              // ReusableImagePicker(),
              // SizedBox(height: 10,),
              // ReusableImagePicker(),
              // ElevatedButton(onPressed: (){
              //   getImageFromCamera();
              // }, child: Text('Take image'))
            ],
          ),
        ),
      ),
    );
  }

  // void getImageFromCamera() async {
  //   final returnImage = await ImagePicker().pickImage(source: ImageSource.camera,imageQuality: 75);
  //   // if(imagePic)
  //   setState(() {
  //     imagePic = File(returnImage!.path);
  //   });
  //
  // }
}
