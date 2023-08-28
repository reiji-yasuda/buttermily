import 'dart:io';
import 'dart:math';
import 'package:buttermilly/account/account.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<HomeScreen> {
  File? image;
  ImagePicker picker = ImagePicker();
  bool isFavorite = false;
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
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'BUTTURMILLY',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'ユーザーネームを検索',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                  ),
                ),
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: SearchBar());
                  },
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 500,
            height: 600,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Accountprofiel()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 5.0,
                    ),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('image/Ellipse11.png'),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        width: 280,
                        height: 460,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 238, 238),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                                  isFavorite =! isFavorite; // 変数をトグルして色を切り替え
                                          });
                      },
                      child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 163, 237, 225),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'image/fireflower.jpg',
                                  ),
                                  fit: BoxFit.cover ,
                                ),
                              ),
                        width: 280,
                        height: 390,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                          height: 390,
                        ),
                        Container(
                          width: 260,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    
                                    child: IconButton(
                                        icon: Icon(Icons.favorite,
                                            color: isFavorite
                                                ? Colors.pink
                                                : Colors.grey
                                                ),
                                        onPressed: () {
                                          setState(() {
                                            isFavorite =
                                                !isFavorite; // 変数をトグルして色を切り替え
                                          });
                                        },
                                        //タップ中の色
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      width: 180,
                                      child: Text(
                                        'マチョマッチョマチャメチャガチャ',
                                        style: TextStyle(fontSize: 13),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                                  
                                  Icon(
                                    Icons.card_giftcard,
                                  ),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Search Results for "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search Suggestions'),
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
