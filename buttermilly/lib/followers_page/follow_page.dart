import 'package:flutter/material.dart';
import 'package:buttermilly/model/hayata1.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({Key? key}) : super(key: key);

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  List<Account> followers = [
    Account(
        id: '1',
        name: 'Hayata',
        selfIntroduction: 'こんばんは',
        userId: 'hayata_0401',
        imagePath:
            'https://i0.wp.com/mariayuri28.com/wp-content/uploads/2023/08/d587aed5e3203194a318cf78e70cb99a.png?resize=640%2C352&ssl=1',
        createdTime: DateTime.now(),
        updatedTime: DateTime.now()),
    Account(
        id: '2',
        name: 'しょううん',
        selfIntroduction: 'こんばんは',
        userId: 'syoun.com',
        imagePath:
            'https://icoia.net/wp-content/uploads/2019/07/-2019-07-01-18-10-07-e1593650839325.jpg',
        createdTime: DateTime.now(),
        updatedTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Follow',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 20), // 余白を追加
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://example.com/your_image_path'), // 修正: 画像パスを設定
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Family',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text('@familygroup'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: followers.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              foregroundImage:
                                  NetworkImage(followers[index].imagePath),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '@${followers[index].userId}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
