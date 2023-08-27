import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:buttermilly/model/hayata1.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<Account> followers = [
    Account(
      id: '1',
      name: 'Hayata',
      selfIntroduction: 'こんばんは',
      userId: 'hayata_0401',
      imagePath:
          'https://i0.wp.com/mariayuri28.com/wp-content/uploads/2023/08/d587aed5e3203194a318cf78e70cb99a.png?resize=640%2C352&ssl=1',
      createdTime: DateTime.now(),
      updatedTime: DateTime.now(),
    ),
    Account(
      id: '2',
      name: 'しょううん',
      selfIntroduction: 'こんばんは',
      userId: 'syoun.com',
      imagePath:
          'https://icoia.net/wp-content/uploads/2019/07/-2019-07-01-18-10-07-e1593650839325.jpg',
      createdTime: DateTime.now(),
      updatedTime: DateTime.now(),
    ),
    Account(
      id: '3',
      name: '0時',
      selfIntroduction: 'こんばんは',
      userId: 'reiji.com',
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL38yy-OeZfDZvmzsHPQzz-8QmfNJaEDIWbg&usqp=CAU',
      createdTime: DateTime.now(),
      updatedTime: DateTime.now(),
    ),
  ];
  Account? selectedValue;
  String finishInfo = 'Finish!! 10ptゲットしました!';

  void handlePostButton() {
    if (selectedValue != null) {
      followers.remove(selectedValue);
      setState(() {
        selectedValue;
      });
      print('Posted');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Post',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = handlePostButton,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 250,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            padding: EdgeInsets.only(left: 10, right: 30),
            child: Row(
              children: [
                if (followers.isEmpty)
                  Text(
                    finishInfo,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                if (followers
                    .isNotEmpty) // Show PopupMenuButton only when followers are not empty
                  PopupMenuButton<Account>(
                    icon: Icon(Icons.arrow_right),
                    color: Colors.white,
                    initialValue: selectedValue,
                    onSelected: (Account? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    itemBuilder: (context) {
                      return followers
                          .map(
                            (e) => PopupMenuItem<Account>(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      e.imagePath,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text('${e.name}'),
                                ],
                              ),
                              value: e,
                            ),
                          )
                          .toList();
                    },
                  ),
                if (followers.isNotEmpty)
                  Text(
                    'Next',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                if (followers.isNotEmpty)
                  SizedBox(
                    width: 20,
                  ),
                if (selectedValue != null && followers.isNotEmpty)
                  Column(
                    children: [
                      CircleAvatar(
                        foregroundImage: NetworkImage(selectedValue!.imagePath),
                      ),
                      Text(
                        selectedValue!.name,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Container(
            width: 280,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                hintText: 'Write',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
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
