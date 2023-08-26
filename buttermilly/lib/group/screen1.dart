import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  File? image;
  ImagePicker picker = ImagePicker();

  Future<void> getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Family',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Muttyo()),
              );
            },
            icon: Icon(Icons.dehaze_sharp),
          ),
        ],
      ),

      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 215, 228, 239),
            width: double.infinity,
            height: 600,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Muttyo()),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: Container(
                    width: 280,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                // フローティングアクションボタンを押された時の処理.
                print("フローティングアクションボタンをクリック")
              },
          child: Icon(Icons.add)),
    );
  }
}

class Muttyo extends StatefulWidget {
  const Muttyo({super.key});

  @override
  State<Muttyo> createState() => _MuttyoState();
}

class _MuttyoState extends State<Muttyo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('kajdk')),
      body: SafeArea(child: Text('なんでも')),
    );
  }
}
