import 'package:flutter/material.dart';

class EditGroupScreen extends StatefulWidget {
  const EditGroupScreen({super.key});

  @override
  State<EditGroupScreen> createState() => _EditGroupScreenState();
}

class _EditGroupScreenState extends State<EditGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20), // AppBarの高さ
        child: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center, // 垂直方向中央寄せ
        children: [
          SizedBox(height: 20), // Add some spacing
          Stack(
            // Stack ウィジェットを使用してオーバーレイを作成
            alignment: Alignment.center, // 中央寄せ
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Color.fromARGB(255, 232, 232, 232),
              ),
              Positioned(
                right: 0, // 右寄せ
                bottom: 0, // 下寄せ
                child: Icon(
                  Icons.collections,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add some spacing
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '@family_group',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue, //通常時
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink, //入力中
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Familly',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue, //通常時
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink, //入力中
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'グループ紹介',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue, //通常時
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink, //入力中
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
