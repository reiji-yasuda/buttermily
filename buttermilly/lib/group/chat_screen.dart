import 'package:buttermilly/post_page/post_papge.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
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
            height: 520,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Muttyo()),
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 5.0,
                    ),
                    child: CircleAvatar(
                      radius: 20,
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
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 163, 237, 225),
                      ),
                      width: 280,
                      height: 390,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
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
                                      padding: const EdgeInsets.only(left: 10),
                                      child: IconButton(
                                        icon: Icon(Icons.favorite,
                                            color: isFavorite
                                                ? Colors.pink
                                                : Colors.grey),
                                        onPressed: () {
                                          setState(() {
                                            isFavorite =
                                                !isFavorite; // 変数をトグルして色を切り替え
                                          });
                                        },
                                        //タップ中の色
                                      )),
                                  // SizedBox(
                                  //   height: 3,
                                  // ),
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
                              Row(
                                children: [
                                  Text('Next'),
                                  Icon(Icons.account_circle),
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
          Column(children: [
            Text(
              '今日の１枚を\n 投稿しよう!!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, right: 0, bottom: 0, left: 0),
              child: SizedBox(
                width: 140, //横幅
                height: 45, //高さ
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
            ),
            SizedBox(
              width: 300,
              height: 300,
            )
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostPage())),
                // フローティングアクションボタンを押された時の処理.
                print("フローティングアクションボタンをクリック")
              },
          child: Icon(Icons.add)),
//         onPressed: () async {
//           await _initializeControllerFuture;
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => CameraScreen(controller: _controller),
//             ),
//           );
//         },
//         child: Icon(Icons.camera),
//       ),
    );
  }
}

class CameraScreen extends StatelessWidget {
  CameraScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
