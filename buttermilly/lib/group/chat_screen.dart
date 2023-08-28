import 'package:buttermilly/post_page/post_papge.dart';
import 'package:flutter/material.dart';

import '../account/account.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Family',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.dehaze_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          
          Container(
            color: Colors.white,
            width: 500,
            height: 530,
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
                            fit: BoxFit.cover,
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
                                      width: 250,
                                      child: Text(
                                        '今日は綺麗な花火を見れました！',
                                        style: TextStyle(fontSize: 13),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
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
          Container(
            color: Colors.white,
            width: 500,
            height: 530,
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
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL38yy-OeZfDZvmzsHPQzz-8QmfNJaEDIWbg&usqp=CAU',),
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
                          image: AssetImage('image/20171114-3.jpg'),
                          fit: BoxFit.cover,
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
                                      width: 250,
                                      child: Text(
                                        'おいしいご飯いつもありがとう',
                                        style: TextStyle(fontSize: 13),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
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
          Container(
            color: Colors.white,
            width: 500,
            height: 530,
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
                      backgroundImage: NetworkImage('https://icoia.net/wp-content/uploads/2019/07/-2019-07-01-18-10-07-e1593650839325.jpg',),
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
                          image: AssetImage('image/IMG_4679.jpg'),
                          fit: BoxFit.cover,
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
                                      width: 250,
                                      child: Text(
                                        '肩揉んでくれてありがとう',
                                        style: TextStyle(fontSize: 13),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
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
          Container(
            color: Colors.white,
            width: 500,
            height: 530,
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
                      backgroundImage: NetworkImage('https://i0.wp.com/mariayuri28.com/wp-content/uploads/2023/08/d587aed5e3203194a318cf78e70cb99a.png?resize=640%2C352&ssl=1',)
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
                          image: AssetImage('image/IMG_2312.jpg'),
                          fit: BoxFit.cover,
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
                                      width: 250,
                                      child: Text(
                                        '何撮ってんねん！',
                                        style: TextStyle(fontSize: 13),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
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
          SizedBox(height: 300,),
          Align(
                  alignment: Alignment.center,
                  child: Text(
                    'グループの１枚を\n   投稿しよう!!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, right: 100, bottom: 0, left: 100),//高さ
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "GO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPrimary: Colors.black, //押したときの色！！
                      ),
                    ),
                  ),
              
                SizedBox(
                  width: 300,
                  height: 300,
                ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PostPage()));
          // フローティングアクションボタンを押された時の処理.
          print("フローティングアクションボタンをクリック");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CameraScreen extends StatelessWidget {
  CameraScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('キャメラ！'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () async {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
