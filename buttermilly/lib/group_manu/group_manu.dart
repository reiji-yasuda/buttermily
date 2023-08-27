import 'package:buttermilly/create_group_page/create_group_page.dart';
import 'package:buttermilly/group/chat_screen.dart';
import 'package:buttermilly/group_account/group_account_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../account/account.dart';

class GroupManu extends StatefulWidget {
  const GroupManu({super.key});

  @override
  State<GroupManu> createState() => _GroupManuState();
}

class _GroupManuState extends State<GroupManu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Groups',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notifications,
              size: 35,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          IconButton(
            icon: const Icon(Icons.person_add),
            iconSize: 40,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateGroupPage()));
            },
          ),
          Text('思い出をつくる', textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GroupAccountPage()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 30,
                    foregroundColor: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Family',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatScreen()));
                            }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
