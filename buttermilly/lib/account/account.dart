import 'package:buttermilly/account/account_edit.dart';
import 'package:buttermilly/followers_page/follow_page.dart';
import 'package:buttermilly/followers_page/followers_page.dart';
import 'package:buttermilly/group/chat_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:buttermilly/bottombar.dart';

class Accountprofiel extends ConsumerWidget {
  Accountprofiel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final textwidth = size.width;
    final textheight = size.height;

    UserData userData = ref.watch(userDataProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.orange[100],
        actions: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0, top: 200.0),
            ),
            Column(children: [
              Text(
                userData.username,
                style: TextStyle(fontSize: 30),
              ),
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('image/Ellipse11.png'),
              ),
              Text(
                userData.name,
                style: TextStyle(fontSize: 25),
              ),
            ]),
            SizedBox(
              width: 40.0,
            ),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: '2',
                        style: const TextStyle(
                          fontSize: 30.0,
                          height: 1,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FollowPage()));
                          },
                      ),
                    ],
                  ),
                ),
                Text('Follow', style: TextStyle(fontSize: 17.0)),
              ],
            ),
            SizedBox(
              width: 30.0,
            ),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: '2',
                        style: const TextStyle(
                          fontSize: 30.0,
                          height: 1,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FollowersPage()));
                          },
                      ),
                    ],
                  ),
                ),
                Text('Followers', style: TextStyle(fontSize: 17.0)),
              ],
            ),
          ]),
          // Padding(
          //   padding: EdgeInsets.only(left: 50),
          //   child: SizedBox(
          //     width: 90,
          //     height: 10,
          //     child: Column(children: [
          //       Text(
          //         "自己紹介",
          //         style: TextStyle(
          //           fontSize: 10,
          //         ),
          //       ),
          //     ]),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: SizedBox(
              width: 100,
              height: 40,
              child: Column(children: [
                Text(
                  userData.selfIntro,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: textwidth / 2 - 100),
              ),
              SizedBox(
                width: textwidth / 5.0,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AccountEdit()));
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
              ),
              SizedBox(
                width: textwidth / 5.0,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
                  },
                  child: const Text(
                    'Share',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          SizedBox(
            height: 30,
            width: 150,
            child: Text('所属中のグループ'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('image/Ellipse11.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'グループ名(3)',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                      },
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('image/Ellipse11.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'グループ名(3)',
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreen()));
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
