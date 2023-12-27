import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class FireStorage extends StatefulWidget {
  FireStorage({super.key});

  @override
  State<FireStorage> createState() => _FireStorageState();
}

class _FireStorageState extends State<FireStorage> {
  final ImagePicker picker = ImagePicker();

  File? imageFile;
  getImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      imageFile = File(pickedImage.path);
      print(pickedImage);
    }
  }

  final storageRef = FirebaseStorage.instance.ref();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            imageFile != null
                ? Image.file(imageFile!)
                : ElevatedButton(onPressed: getImage(), child: Text("upload")),
          ],
        ),
      ),
    );
  }
}
