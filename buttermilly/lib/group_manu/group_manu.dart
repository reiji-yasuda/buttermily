import 'package:flutter/material.dart';

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
            Icon(
              Icons.notifications,
            ),
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
          ),
          const Icon(
            Icons.person_add,
            size: 40,
          ),
          Text('思い出をつくる', textAlign: TextAlign.center),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  foregroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Family',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          )
        ]));
  }
}
